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
           'Argentina') flag='🇦🇷';;
           'Australia') flag='🇦🇺';;
             'Austria') flag='🇦🇹';;
             'Bahrain') flag='🇧🇭';;
             'Belarus') flag='🇧🇾';;
             'Belgium') flag='🇧🇪';;
              'Bosnia') flag='🇧🇦';;
              'Brazil') flag='🇧🇷';;
            'Bulgaria') flag='🇧🇬';;
              'Canada') flag='🇨🇦';;
            'Colombia') flag='🇨🇴';;
          'Costa Rica') flag='🇨🇷';;
             'Croatia') flag='🇭🇷';;
      'Czech Republic') flag='🇨🇿';;
              'Cyprus') flag='🇨🇾';;
             'Denmark') flag='🇩🇰';;
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
           'Hong Kong') flag='🇭🇰';;
             'Hungary') flag='🇭🇺';;
             'Iceland') flag='🇮🇸';;
               'India') flag='🇮🇳';;
           'Indonesia') flag='🇮🇩';;
             'Ireland') flag='🇮🇪';;
              'Israel') flag='🇵🇸';;
               'Italy') flag='🇮🇹';;
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
         'Netherlands') flag='🇳🇱';;
         'New Zealand') flag='🇳🇿';;
              'Norway') flag='🇳🇴';;
            'Pakistan') flag='🇵🇰';;
              'Panama') flag='🇵🇦';;
         'Philippines') flag='🇵🇭';;
              'Poland') flag='🇵🇱';;
            'Portugal') flag='🇵🇹';;
               'Qatar') flag='🇶🇦';;
             'Romania') flag='🇷🇴';;
              'Russia') flag='🇷🇺';;
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
              'Turkey') flag='🇹🇷';;
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
