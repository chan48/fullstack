name 'webserver'
description 'bottle.py webapp for fullstack'
run_list('fullstack::webapp')
override_attributes(
  'apache' => {
    'listen_ports' => ["8080", "443"],
    'mpm_binary' => "httpd.worker",
    'ext_status' => true,
  }
)
