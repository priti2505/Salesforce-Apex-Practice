trigger ConPhoneUpdate on Account (after update) 
{
    for(Account AccNew : trigger.new)
    {
        Account accold = trigger.oldmap.get(accNew.id);
        
        //This is used whenever account phone id update then also contact is will update
        
        if(accNew.phone != accold.phone)
        {
            list<contact> accRelatedCon =[SELECT Id ,Phone FROM contact WHERE accountid =:accNew.id];
            for(contact con :accRelatedCon)
            {
                con.phone = accNew.phone;
            }
            update accRelatedCon;
            
        }
        
    }
    
}
