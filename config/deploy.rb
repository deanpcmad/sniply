# =============================================================================
# GENERAL SETTINGS
# =============================================================================

## Set the name for the application
set :application, "sniply"

## Path where the application should be stored
## Stored in '/opt/apps/' by default
# set :deploy_to, "/opt/apps/sniply"

## Repository settings
set :repository, "git@codebasehq.com:voupe/sniply/app.git"
set :branch, "master"
# set :codebase_token, "abc123abc123"

## Server/app details
server "1.1.1.1", :web, :app, :db, primary: true
set :domain_name, "sniply.com"


# =============================================================================
# RECIPE INCLUDES
# =============================================================================

require "rubygems"
require "bundler/capistrano"
require "gonzo/deploy"
