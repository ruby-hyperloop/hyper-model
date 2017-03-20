# formats a markdown string using 'marked'
class FormattedDiv < Hyperloop::Component
  param :markdown, type: String
  collect_other_params_as :attributes

  render do
    # send other attributes (such as css class) on to the outer div
    DIV(params.attributes) do
      DIV(
        dangerously_set_inner_HTML:
          { __html: `marked(#{params.markdown}, {sanitize: true })` }
      )
    end
  end
end
