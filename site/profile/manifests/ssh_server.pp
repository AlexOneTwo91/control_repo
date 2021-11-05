class profile::ssh_server { 
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => "ssh-rsa,
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvvZW6Hnzlf2/QWePdbBsYrmfq4BiwZaP+A24mHCCAu7zktlmh+aP2L8KhEm/EKJcyoFKcSO2Dc6BTdQZhJxJYn3tS6bTH8jTz9OSEpCB25UUTMelvdaHH6uvZc+ToAsEJ6kiwFLYX09x29dyeKRQSegllBCVATqJoVZbg8lqa+tgqFAHtKIpDWmfOY/MSNifKhEF8Qb3YbeDP12ZAPnI6DeoBHmNRE37e7AnEyZMoLImSicF8ZVB1NtgHWbqWmnTeqKJ+DIZkzh691It8370/DXGbnlb63mvZta66n7mp0HmXQ5VTnHtmcrayI1i54CLAM2Oy6D/w14DrFZJAr2L7',
        }
}        
