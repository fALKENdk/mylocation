# ------------------------------------------------------------------------------
#          FILE: mylocation.plugin.zsh
#        AUTHOR: Kasper Friis Christensen (kasper[at]friischristensen.com)
#       VERSION: 1.0.0
# -----------------------------------------------------------------------------
function mylocation() {
        ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
  location=$(curl -s freegeoip.net/csv/$ip)
   country=$(cut -d',' -f3 <<< $location)

  case $country in
                   'Aland Islands') flag='🇦🇽';;
                         'Albania') flag='🇦🇱';;
                         'Algeria') flag='🇩🇿';;
                         'Andorra') flag='🇦🇩';;
                        'Anguilla') flag='🇦🇮';;
                       'Argentina') flag='🇦🇷';;
                           'Aruba') flag='🇦🇼';;
                       'Australia') flag='🇦🇺';;
                         'Austria') flag='🇦🇹';;
                         'Bahamas') flag='🇧🇸';;
                         'Bahrain') flag='🇧🇭';;
                        'Barbados') flag='🇧🇧';;
                         'Belarus') flag='🇧🇾';;
                         'Belgium') flag='🇧🇪';;
                         'Bermuda') flag='🇧🇲';;
                          'Bosnia') flag='🇧🇦';;
                          'Brazil') flag='🇧🇷';;
          'British Virgin Islands') flag='🇻🇬';;
                        'Bulgaria') flag='🇧🇬';;
                          'Canada') flag='🇨🇦';;
                  'Cayman Islands') flag='🇰🇾';;
                        'Colombia') flag='🇨🇴';;
                      'Costa Rica') flag='🇨🇷';;
                         'Croatia') flag='🇭🇷';;
                            'Cuba') flag='🇨🇺';;
                  'Czech Republic') flag='🇨🇿';;
                          'Cyprus') flag='🇨🇾';;
                         'Denmark') flag='🇩🇰';;
                        'Dominica') flag='🇩🇲';;
              'Dominican Republic') flag='🇩🇴';;
                         'Estonia') flag='🇪🇪';;
                           'Egypt') flag='🇪🇬';;
                     'El Salvador') flag='🇸🇻';;
                   'Faroe Islands') flag='🇫🇴';;
                         'Finland') flag='🇫🇮';;
                          'France') flag='🇫🇷';;
                         'Georgia') flag='🇬🇪';;
                         'Germany') flag='🇩🇪';;
                       'Gibraltar') flag='🇬🇮';;
                          'Greece') flag='🇬🇷';;
                       'Greenland') flag='🇬🇱';;
                         'Grenada') flag='🇬🇩';;
                      'Guadeloupe') flag='🇬🇵';;
                           'Haiti') flag='🇭🇹';;
                       'Hong Kong') flag='🇭🇰';;
                         'Hungary') flag='🇭🇺';;
                         'Iceland') flag='🇮🇸';;
                           'India') flag='🇮🇳';;
                       'Indonesia') flag='🇮🇩';;
                         'Ireland') flag='🇮🇪';;
                          'Israel') flag='🇵🇸';;
                           'Italy') flag='🇮🇹';;
                         'Jamaica') flag='🇯🇲';;
                           'Japan') flag='🇯🇵';;
                          'Latvia') flag='🇱🇻';;
                   'Liechtenstein') flag='🇱🇮';;
                       'Lithuania') flag='🇱🇹';;
                      'Luxembourg') flag='🇱🇺';;
                           'Macau') flag='🇲🇴';;
                       'Macedonia') flag='🇲🇰';;
                        'Malaysia') flag='🇲🇾';;
                        'Maldives') flag='🇲🇻';;
                           'Malta') flag='🇲🇹';;
                          'Mexico') flag='🇲🇽';;
                         'Moldova') flag='🇲🇩';;
                          'Monaco') flag='🇲🇨';;
                      'Montenegro') flag='🇲🇪';;
                      'Montserrat') flag='🇲🇸';;
                     'Netherlands') flag='🇳🇱';;
                     'New Zealand') flag='🇳🇿';;
                       'Nicaragua') flag='🇳🇮';;
                          'Norway') flag='🇳🇴';;
                        'Pakistan') flag='🇵🇰';;
                          'Panama') flag='🇵🇦';;
                     'Philippines') flag='🇵🇭';;
                          'Poland') flag='🇵🇱';;
                        'Portugal') flag='🇵🇹';;
                     'Puerto Rico') flag='🇵🇷';;
                           'Qatar') flag='🇶🇦';;
                         'Romania') flag='🇷🇴';;
                          'Russia') flag='🇷🇺';;
           'Saint Kitts and Nevis') flag='🇰🇳';;
                     'Saint Lucia') flag='🇱🇨';;
       'Saint Pierre and Miquelon') flag='🇵🇲';;
'Saint Vincent and the Grenadines') flag='🇻🇨';;
                      'San Marino') flag='🇸🇲';;
                    'Saudi Arabia') flag='🇸🇦';;
                          'Serbia') flag='🇷🇸';;
                       'Singapore') flag='🇸🇬';;
                        'Slovakia') flag='🇸🇰';;
                        'Slovenia') flag='🇸🇮';;
                     'South Korea') flag='🇰🇷';;
                           'Spain') flag='🇪🇸';;
                          'Sweden') flag='🇸🇪';;
                     'Switzerland') flag='🇨🇭';;
                          'Taiwan') flag='🇹🇼';;
                        'Thailand') flag='🇹🇭';;
             'Trinidad and Tobago') flag='🇹🇹';;
                          'Turkey') flag='🇹🇷';;
        'Turks and Caicos Islands') flag='🇹🇨';;
                         'Ukraine') flag='🇺🇦';;
                         'Uruguay') flag='🇺🇾';;
                   'United States') flag='🇺🇸';;
            'United Arab Emirates') flag='🇦🇪';;
                  'United Kingdom') flag='🇬🇧';;
                         'Vatican') flag='🇻🇦';;
                         'Vietnam') flag='🇻🇳';;
                                 *) flag=$country;;
  esac

  echo $flag;
}
