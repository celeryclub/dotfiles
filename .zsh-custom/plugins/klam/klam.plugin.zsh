export KLAM_EXT_NO_SSH_OUT=true

# Update all klam-ssh keys
klam() {
  echo "Creating production pem..."
  klam-ext getssh be-prod
  if [ $? -ne 0 ]; then
    echo "Production PEM failed: $?"
  fi

  echo "Creating stage pem..."
  klam-ext getssh be-stage
  if [ $? -ne 0 ]; then
    echo "Stage PEM failed: $?"
  fi

  echo "Creating dev pem..."
  klam-ext getssh be-dev
  if [ $? -ne 0 ]; then
    echo "Dev PEM failed: $?"
  fi
}
