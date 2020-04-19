# promo [
# Why first NoCoders need to know code?
# Because NoCode tools are coded with Code 
# (c) 2020 Animation CPU Studio
# MIT license
# promo ]

# fedora30 [
# vs studio [

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# vs studio ]
# fedora30 ]

# create dir lc-cli [

mkdir livecomment-cli

# create dir lc-cli ]
# open browser [

firefox &

# open browser ]
# open browser local [

firefox localhost:3000 &

# open browser local ]

# plugin: plugin.api [
#: =this.frame('server.exec')

var self = this

function plugin_api_setup() {
  self.getNodeByName = function getNodeByName(name) {
    self.dbgbrk('plugin.api getNodeByName')
    return this
  }
}

self.dbgbrk('plugin.api')

plugin_api_setup()

# plugin: plugin.api ]

# plugin: test.plugin.api [
#: =this.frame('server.exec')

#this.getNodeByName

# plugin: test.plugin.api ]

# plugin: test.client [

# test [
# validate getNodeByName [

self.getNodeByName !!==0? //js validate

# validate getNodeByName ]
# test ]

# plugin: test.client ]

# plugin: test.server [


# plugin: test.server ]


# plugin: bash [
#: = this.frame('server.exec')
  # name, this.data

console.log("bash.exec: setup, use frame('server.exec')")
this.onFrame('bash.exec', '', 'frame', function() {

  this.dbgbrk('bash.exec frame')

  function read_script_name(name) {
    console.log(`todo: parse object & validate ${name}`)
    var file = name
    return name
  }

  var name = read_script_name(this.object.name)

  function process_permissions(file, script) {
    console.log(`todo: PROCESS PERMISSIONS ${file}`)
  }

  function save_script(file, script) {
    console.log(`SCRIPT ${script}`)

  }

  function sh(name) {

  }

  process_permissions(name, script)
  save_script(name, script)
  sh(name)

})

# plugin: bash ]

# file: Preferences.sublime-settings [
{
    "tab_size": 2,
    "translate_tabs_to_spaces": true,
}
# file: Preferences.sublime-settings ]


# 1.sh [
#: = this.frame('bash.script')
#!/bin/sh

#todo: PERMISSIONS GRANT ACCESS TMP_DIR CREATE_FILE

SCRIPT=$0

echo RUN ON BASH
echo PWD=`pwd`
echo SCRIPT=$SCRIPT

LINUX_CORE='fedora'

# NATIVE [
# init [

mkdir ~/bin

# init ]
# vs studio init [

install_vs_studio () {
  if [ $LINUX_CORE == 'fedora']; then
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf update
    sudo dnf install code -y
  fi
}

uninstall_vs_studio () {
}

# vs studio init ]
# sublime text init [

install_sublime_text () {
  if [ $LINUX_CORE == 'fedora']; then
    sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
    sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
    sudo dnf install sublime-text -y
    ln -s /opt/sublime_text/sublime_text ~/bin/sublime_text
  fi
}

uninstall_sublime_text () {
}

# sublime text init ]
# user setup [

# copy files

# user setup ]
# NATIVE ]
# Q [

# 1. new option --noexec dir
# 2. plugins install soft
# 3. plugins ui install soft

# 4. install/start/stop plugin 
# 5. file.save
# 6. bash.script -> file.save
# 7. bash.exec

# + install vscode
# . vscode livecomment-cli run configuration
# . cli add dir
# . cli remove dir
# . cli switch options add/remove/help
# . cli config file
# . blessed ui console 
# + dist/plugins/v0/ - plugins
# + plugins: base.sh - mixed doc/js

# Q ]

# 1.sh ]
