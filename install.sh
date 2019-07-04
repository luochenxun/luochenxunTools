USER_HOME=`echo ~`
PROJECT_HOME=$USER_HOME"/.luochenxunTools"

install() {
  echo "Installing $1 ..."

  echo "Install will move the $1 to /usr/local/bin/$1"
  cp $PROJECT_HOME/tools/$1 /usr/local/bin/$1
  chmod a+x /usr/local/bin/$1

  if [[ $? == 0 ]]; then
    echo "Success!"
  fi
}

main() {
  echo "Cloning project from git repository ..."

  if [[ -d $PROJECT_HOME ]]; then
    cd $PROJECT_HOME
    git clean -df
    git reset --hard HEAD
    git pull
  else
     git clone https://github.com/luochenxun/luochenxunTools.git $PROJECT_HOME
  fi

  echo "Start install tools."

  # ----------------------
  #  install tools
  # ----------------------
  # Git Tools
  install 'gitDiffTool'
  install 'updateGitTag'
  # Code Tools
  install 'docMaker'
  # Markdown Tools
  install 'markdownNumberHeader'

  if [[ $? == 0 ]]; then
    echo "Congratulation, githooker has installed successfully!"
  fi
}

# Entry
main
