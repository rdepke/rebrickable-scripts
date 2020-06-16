#!/bin/bash
# assuming you exported this env vars in your shell
#export user_token=token-from-api-call
#export api_key=api-token-from-account
#export set_list_id=id-of-list-you-want-to-add-the-sets get via API
for i in $(<set-numbers.txt)
  do echo "$i"
     curl -X POST --header 'Content-Type: application/x-www-form-urlencoded' --header 'Accept: application/json' --header "Authorization: key ${api_key}" -d "set_num=${i}-1&quantity=1&include_spares=false" "https://rebrickable.com/api/v3/users/${user_token}/setlists/${i}/sets/"
done
