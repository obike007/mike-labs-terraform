terraform { 
  cloud { 
    
    organization = "mike-station" 

    workspaces { 
      name = "cli-projects" 
    } 
  } 
}

resource "time_sleep" "wait_30_seconds" {

  create_duration = "30s"
}