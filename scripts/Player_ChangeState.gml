//ChangePlayerState(relative | target_state)
var num_states = array_length_1d(States);
with(oPlayer) {
    if(is_string(argument[0])) {
        var state_name = argument[0];
        for(var i = 0; i < num_states; i++) {
            if(States[i] == state_name) {
                State = i;
                break;
            }
        }
    } else if(is_real(argument[0])) {
        var new_state = State + argument[0];
        if(new_state >= num_states) {
            new_state = 0;
        } else if(new_state < 0) {
            new_state = num_states - 1;
        }
        State = new_state;
    }
}
