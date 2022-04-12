Case  $operatingsystem {
  Centos, redhat : { $service_name = ‘nginx’ }
  Debian, Ubuntu : { $service_name = ‘nginx’}
Service  { ‘nginx’ :
Name   => $service_name,
Ensure  =>running,
Enable => true,
Subscribe => File [‘nginx.conf’] ,
}

