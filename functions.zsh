function killport() {
  if [ -z "$1" ]; then
    echo "Usage: killport <port>"
    return 1
  fi

  local port=$1
  local pids=$(lsof -ti :$port)

  if [ -n "$pids" ]; then
    echo "Killing processes on port $port"
    echo $pids | xargs kill -9
  else
    echo "No processes found running on port $port"
  fi
}
