. "$HOME/.cargo/env"

# A function to open a [t]mux session to a [m]ain session
tm() {
    local base_session=${1:-main}
    local client_session="$base_session-$$"
    
    # Create base session if needed
    tmux has-session -t "$base_session" 2>/dev/null || tmux new-session -d -s "$base_session"
    
    # Create client session and attach
    tmux new-session -s "$client_session" -t "$base_session"
}
