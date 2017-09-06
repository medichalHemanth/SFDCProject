public class documentExt 
{
public documentExt(Apexpages.StandardController controller)
{
    Document d=(Document)controller.getRecord();
    d.FolderId=UserInfo.getUserId();
}
}