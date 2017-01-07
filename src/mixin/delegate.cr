class Object
  # Allows to delegate methods with specified access level
  # e.g. `delegate foo, bar, to: baz, access: :protected`
  macro delegate(*what, to object, access level)
    {% for m in what %}
      {{level.id}} def {{m.id}}(*a,**b)
        {{object}}.{{m.id}}(*a,**b)
      end
    {% end %}
  end
end
