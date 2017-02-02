#!/bin/bash
set -ex

source charms.reactive.sh


@when_not 'squid.installed'
function install_squid() {
    apt install -yq squid
    charms.reactive set_state 'squid.installed'
}


reactive_handler_main
