function modifingDiscipline() {
    var checkboxes = $('input[type=checkbox]:checked');
    if(checkboxes.length == 0){
        alert("Пожалуйста, выберите хотя бы одну дисциплину!");
        return;
    }

    if(checkboxes.length > 1){
        alert("Пожалуйста, выберите только одну дисциплину!");
        return;
    }

    var idDisc = checkboxes[0].value;
    $("#idModifDisc").val (idDisc);
    $("#modifDiscForm").submit();



}