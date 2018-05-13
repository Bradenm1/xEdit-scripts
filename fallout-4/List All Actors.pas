{
  Get all Actor data
}
unit UserScript;

function Process(e: IInterface): integer;
var
  s: string;
  actor: string;
  level: string;
  race: string;
  flags: string;
begin  
  s := Signature(e); // Get type

  // Check if IInterface is an NPC_
  if (s = 'NPC_') then begin // Start If Statement

    actor := Name(e); // Get actors data
    flags := GetElementEditValues(e, 'ACBS\Flags'); // Get flags
    race := GetEditValue(ElementByPath(e, 'RNAM')); // Get race
    level := GetEditValue(ElementByPath(e, 'ACBS\Level')); // Get level
    
    // Display message on messages view
    AddMessage('{' + actor + '} {' + race + '} {' + level + '} {' + flags + '}');
  end // End If Statement
 
end;

end.
