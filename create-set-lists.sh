#!/bin/bash

# assuming you exported this env vars in your shell
#export user_token=token-from-api-call
#export api_key=api-token-from-accout
for i in $(<setlist-names.txt)
  do echo "$i"
  curl -X POST --header 'Content-Type: application/x-www-form-urlencoded' --header 'Accept: application/json' --header "Authorization: key ${api_key}" -d "name=${i}" "https://rebrickable.com/api/v3/users/${user_token}/setlists/"
done
