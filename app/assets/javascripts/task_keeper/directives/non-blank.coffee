angular.module('TaskKeeper').directive 'nonBlank', ->
  restrict: 'A'
  link: (scope, input, attrs) ->
    input[0].required = true

    angular.element(input[0].form).find(':submit').bind 'click', (event) ->
      if isBlank(input.val())
        input.val("")

    isBlank = (text) ->
      !!text && text.length > 0 && !text.match(/\S/)