###
# This is the place to override the nginx cookbook's default attributes.
#
# Do not edit THIS file directly. Instead, create
# "nginx/attributes/customize.rb" in your cookbook repository and
# put the overrides in YOUR customize.rb file.
###

# The following shows how to disable NGinx compression:
#
normal[:nginx][:gzip] = 'on'
#normal[:nginx][:gzip_static] = 'off'
node[:nginx][:gzip_types] = ["application/atom+xml", "application/javascript","application/x-javascript","application/json","application/rss+xml","application/vnd.ms-fontobject","application/x-font-ttf","application/x-web-app-manifest+json","application/xhtml+xml","application/xml","font/opentype","font/truetype","image/svg+xml","image/x-icon","text/css","text/javascript","text/plain","text/x-component"]
node[:nginx][:gzip_vary] = 'on'
node[:nginx][:gzip_proxied] = 'any'
node[:nginx][:gzip_comp_level] = '6'
node[:nginx][:worker_processes] = '10'
