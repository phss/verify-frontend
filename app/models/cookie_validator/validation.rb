class CookieValidator
  class Validation
    def ok?
      true
    end

    def bad?
      !ok?
    end
  end
end
