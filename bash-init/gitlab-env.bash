

# GITLAB_TOKEN: an authentication token for API requests. 
# Setting this avoids being prompted to authenticate and overrides any previously stored credentials. 
# Can be set in the config with 'glab config set token xxxxxx'
export GITLAB_TOKEN=mxrx57JiWgFR6tnybBE5

# GITLAB_URI: specify the url of the gitlab server if self hosted (eg: https://gitlab.example.com). Default is https://gitlab.com.
# GITLAB_URI or GITLAB_HOST: 
export GITLAB_URI=gitlab.newrizon.work

# specify the host where the API endpoint is found. 
# Useful when there are separate [sub]domains or hosts for git and the API endpoint: 
# defaults to the hostname found in the git URL
export GITLAB_API_HOST=gitlab.newrizon.work

# REMOTE_ALIAS or GIT_REMOTE_URL_VAR: git remote variable or alias that contains the gitlab url.
# Can be set in the config with 'glab config set remote_alias origin'
export REMOTE_ALIAS=https://gitlab.newrizon.work

# VISUAL, EDITOR (in order of precedence): the editor tool to use for authoring text.
# Can be set in the config with 'glab config set editor vim'
export VISUAL=emacs
export EDITOR=emacs

# BROWSER: the web browser to use for opening links.
# Can be set in the config with 'glab config set browser mybrowser'
export BROWSER=google-chrome

# GLAMOUR_STYLE: environment variable to set your desired markdown renderer style
# Available options are (dark|light|notty) or set a custom style
# https://github.com/charmbracelet/glamour#styles
export GLAMOUR_STYLE=dark

# NO_COLOR: set to any value to avoid printing ANSI escape sequences for color output. 
export NO_COLOR=0xFF5733