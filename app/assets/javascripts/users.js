$("#degrees a.add_fields").
  data("association-insertion-position", 'before').
  data("association-insertion-node", 'this');

$('#degrees').on('cocoon:after-insert',
     function() {
         $(".user-degree-fields a.add_fields").
             data("association-insertion-position", 'before').
             data("association-insertion-node", 'this');
         $('.user-degree-fields').on('cocoon:after-insert',
              function() {
                $(this).children("#degree_from_list").remove();
                $(this).children("a.add_fields").hide();
              });
     });


     $("#unit_of_studies a.add_fields").
       data("association-insertion-position", 'before').
       data("association-insertion-node", 'this');

     $('#unit_of_studies').on('cocoon:after-insert',
          function() {
              $(".user-unit_of_study-fields a.add_fields").
                  data("association-insertion-position", 'before').
                  data("association-insertion-node", 'this');
              $('.user-unit_of_study-fields').on('cocoon:after-insert',
                   function() {
                     $(this).children("#unit_of_study_from_list").remove();
                     $(this).children("a.add_fields").hide();
                   });
          });
