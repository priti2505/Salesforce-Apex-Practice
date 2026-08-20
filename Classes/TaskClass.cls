public class TasksClass 
{
    public static void taskMethod()
       {
       // If Phone NUmber or email is missing then create a task
        Contact con = new Contact();
        con.firstName = 'sita';
        con.lastName = 'ram';
        con.Email = 'RamPrasad@gmail.com';
        con.OwnerId = userinfo.getuserid();
        Insert con;
        system.debug(con);
        
        if(con.Phone == Null || con.Email == Null)
        {
            task ta = new task();
            ta.ownerId = con.OwnerId;
            ta.WhoId = con.Id;
            ta.Subject = 'Get the Contact Details';
            ta.ActivityDate = date.today().adddays(10);
            insert ta;
            system.debug(ta);
 
    }
 
    }
}
