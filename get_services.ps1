#Just get service
get-service

#Commit 2 - Get Service for a specific service name starting with "Win"
get-service -name "Win*"

#Commit 3 - Get all services in stop state 

get-service 
Get-Service | Where-Object {$_.Status -eq "stopped"}