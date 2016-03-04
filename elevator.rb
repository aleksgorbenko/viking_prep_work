# My developer's friend pseudocode to specify change states of the elevator
# This bit is the only one which is not designed by me

PROGRAM IS_STATE_VALID(from_state, to_state)

PROGRAM make_state_transition(from_state, to_state)
    your transition here:



PROGRAM MAIN
    States = ["OpenElevatorDoor",
                "CloseElevatorDoor",
                "GoUpFullSpeed",
                "GoDownFullSpeed",
                "SlowDownIfNecessary",
                "ElevatorStop"]

    PROGRAM human_input(current_state, next_state):
        if verify_input(current_state, next_state):
            logic to get next state
            return next_state
        else
            return current_state

    PROGRAM sensor_input(current_state, next_state):
            if verify_input(current_state, next_state):
            logic to get next state
            return next_state
        else
            return current_state

    WHILE True:
        next_state = sensor_input(current_state, next_state) and human_input(current_state, next_state)

        do make_state_transition(current_state, next_state)
        current_state = next_state


######################################################

# From here the pseudo-code is of my design

PROGRAM Elevator:
   FloorNumber = (1:25)
   N = current floor
   Update  the current floor
    WHILE calling button:true then DO
        IF the calling button FloorNumber > N then
            IF FloorNumber = N then
                OpenElevatorDoor:
            ELSE
                Continue
            GoUpFullSpeed:
        ELSE
            GoDownFullSpeed:

            DO SlowDownIfNecessary:
            DO ElevatorStop:
            DO OpenElevatorDoor:
            DO CloseElevatorDoor:
        
        IF calling button:false then
            break the loop then
            DO ElevatorStop:
        ELSE
            Continue
        END
    END
END    





PROGRAM SlowDownIfNecessary:

    IF we are GoUpFullSpeed: true
        IF N is only 1 floor away from the lowest destination floor
            slow down
        END
    ELSE IF we are GoDownFullSpeed: true
        IF N only 1 floor away from the highest destination floor
            slow down
        END
    END
END


######################################################


PROGRAM GoUpFullSpeed:

    IF the destination is more than 1 floor higher from floor N then
        go up full speed
    ELSE
        go up with normal speed
    END
END    


######################################################


PROGRAM GoDownFullSpeed:

    IF the destination is more than 1 floor lower from floor N then
        go down full speed
    ELSE
        go down with normal speed
    END

END

######################################################

PROGRAM OpenElevatorDoor:
  
  IF ElevatorStop: true 
    open the door
  END

    IF OpenButton: true
      open the door
    END
END

######################################################

PROGRAM CloseElevatorDoor:

  IF Sensor sees human obstruction: false for > 15 seconds then
    close the door
  END

  IF CloseButton: true
    IF OpenElevatorDoor: true
      close the door
    END
  END
END


######################################################


PROGRAM ElevatorStop:
  
  #scanner updates the current floor for complete or mid-floor
  Update the current floor
  
  IF elevator is on the complete floor: false
      IF destination is higher than N then
        go higher by 0,5 of the floor
      IF destinatio is lower than N then
        go lower by 0,5 of the floor
      END
  ELSE 
    stop the elevator
  Update the current floor
  Scan for the next calling button FloorNumber
  END
END  


######################################################


PROGRAM CloseButton:

IF user pressed Close button:
    close the elevator door
  END
END


######################################################


PROGRAM OpenButton:

  IF user pressed Open button:
    open the elevator door
  END
END
