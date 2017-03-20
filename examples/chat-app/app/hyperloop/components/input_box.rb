# input box for entering mark down string
class InputBox < Hyperloop::Component

  state composition: ''

  render(DIV, class: 'row form-group input-box navbar navbar-inverse navbar-fixed-bottom') do
    DIV(class: 'col-sm-1 white') { 'Say: ' }
    TEXTAREA(class: 'col-sm-5', rows: rows, value: state.composition)
    .on(:key_down) do |e|
      next unless send_key?(e)
      Operations::Send message: mutate.composition(''), user_name: MessageStore.user_name
    end
    .on(:change) do |e|
      mutate.composition e.target.value
    end
    FormattedDiv class: 'col-sm-5 white', markdown: state.composition
  end

  def rows
    [state.composition.count("\n") + 1, 20].min
  end

  def send_key?(e)
    (e.char_code == 13 || e.key_code == 13) && (e.meta_key || e.ctrl_key)
  end
end
