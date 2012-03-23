// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function vote_u(id){
    $("#vote_id").val(id);
    $("#vote_form").submit();
}

function create_share(){
    var share=$("#share_content").val();
    if (share==""||share==null){
        alert("请输入待发表内容");
        return false;
    }
    $("#create_share").submit();
}