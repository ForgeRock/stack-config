local utils = import "policy_lib.jsonnet";
{

policies: [

  // a sample policy
  { name: "test1",
    description: "This is a test policy" ,
    resources: ["*://acme.com:*/*"],
    actionValues: {HEAD: true, GET: true},
    subject:  { "type": "Identity", "subjectValues": [ "uid=demo,ou=People,dc=example,dc=com"] },
    condition: {type: "SessionProperty", ignoreValueCase: true, properties: {foo: ["bar"]}},
    resourceAttributes: [{type: "User", propertyName: "distinguishedName", propertyValues: []}],
  }

  // sample policy that inherits default settings from url_policy
  util.url_policy
  {
    name: "test2",
    description: "test policy2",
    resources: ["*://bar.com:*/*"],

  }
]

}
