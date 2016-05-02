remote_file "#{Chef::Config[:file_cache_path]}/SafariDriver.safariextz" do
  source node['safari_test']['safari_driver']['url']
end

privacy_services_manager 'allow remote login' do
  service 'accessibility'
  applications %w(
    com.apple.RemoteDesktopAgent
  )
end
#    /System/Library/CoreServices/SystemUIServer.app
#    /System/Library/CoreServices/RemoteManagement/ARDAgent.app
#    /usr/bin/osascript
#    /usr/libexec/sshd-keygen-wrapper
#    com.apple.Safari

# macosx_gui_login node['safari_test']['user'] do
#   password node['safari_test']['user']
# end

safari_extension 'SafariDriver Extension' do
  safariextz "#{Chef::Config[:file_cache_path]}/SafariDriver.safariextz"
end
