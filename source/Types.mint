record Property {
  defaultValue : String from "default",
  description : Maybe(String),
  name : String,
  type : String
}

record ComputedProperty {
  description : Maybe(String),
  source : String,
  name : String,
  type : String
}

record Component {
  computedProperties : Array(ComputedProperty) from "computed-properties",
  properties : Array(Property),
  description : Maybe(String),
  functions : Array(Method),
  name : String
}

record Method {
  arguments : Array(Argument),
  description : Maybe(String),
  source : String,
  name : String,
  type : String
}

record Argument {
  name : String,
  type : String
}

record Module {
  description : Maybe(String),
  functions : Array(Method),
  name : String
}

record Content {
  computedProperties : Array(ComputedProperty),
  properties : Array(Property),
  type : Documentation.Type,
  functions : Array(Method),
  description : String,
  name : String
}

record Documentation {
  components : Array(Component),
  stores : Array(Component),
  modules : Array(Module)
}

enum Documentation.Type {
  Component
  Module
  Store
}

module Content {
  fun empty : Content {
    {
      computedProperties = [],
      properties = [],
      type = Documentation.Type::Component,
      functions = [],
      description = "",
      name = ""
    }
  }
}
