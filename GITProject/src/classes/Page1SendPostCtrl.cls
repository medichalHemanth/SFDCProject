public class Page1SendPostCtrl {
    public string strInputFld {set;get;}
    
    public string getStrInputFld(){
        return 'medichal';
    }
    public PageReference redPost(){
        PageReference rPost = Page.Page2RecievePost;
        rPost.setRedirect(true);
        return rPost;
    }
}