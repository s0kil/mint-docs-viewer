/* Utility functions for the content type. */
module Content {
  /* Creates a new `Content` from a `Component`. */
  fun fromComponent (item : Component) : Content {
    {
      description = Maybe.withDefault("", item.description),
      computedProperties = item.computedProperties,
      properties = item.properties,
      functions = item.functions,
      connects = item.connects,
      name = item.name,
      fields = []
    }
  }

  /* Creates a new `Content` from a `Record`. */
  fun fromRecord (item : Record) : Content {
    {
      description = Maybe.withDefault("", item.description),
      computedProperties = [],
      fields = item.fields,
      name = item.name,
      properties = [],
      functions = [],
      connects = []
    }
  }

  /* Creates a new `Content` from a `Provider`. */
  fun fromProvider (item : Provider) : Content {
    {
      description = Maybe.withDefault("", item.description),
      functions = item.functions,
      computedProperties = [],
      name = item.name,
      properties = [],
      connects = [],
      fields = []
    }
  }

  /* Creates a new `Content` from a `Store`. */
  fun fromStore (item : Store) : Content {
    {
      description = Maybe.withDefault("", item.description),
      computedProperties = item.computedProperties,
      properties = item.properties,
      functions = item.functions,
      name = item.name,
      connects = [],
      fields = []
    }
  }

  /* Creates a new `Content` from a `Module`. */
  fun fromModule (item : Module) : Content {
    {
      description = Maybe.withDefault("", item.description),
      functions = item.functions,
      computedProperties = [],
      name = item.name,
      properties = [],
      connects = [],
      fields = []
    }
  }

  /* Creates a new empty `Content`. */
  fun empty : Content {
    {
      computedProperties = [],
      description = "",
      properties = [],
      functions = [],
      connects = [],
      fields = [],
      name = ""
    }
  }
}
