var interval = {block1:0, block2:0, block3:0, block4:0, block5:0};

// Initializing all blockes
for (var i = 1; i <= Object.keys(interval).length; i++) {
   blockSlide(i, 0);
}

// Function for rotating slides for each block
function blockSlide(block_id, slideIndex) {
  var i;
  var items = document.querySelectorAll("#block"+block_id+" [class*=card-item-]");

  for (i = 1; i <= items.length; i++) {
     $("#block"+block_id+" .card-item-"+i).removeClass("card-active");
     $("#block"+block_id+" .card-image").removeClass("card-image-"+i);
  }
  slideIndex++;

  if (slideIndex > items.length) {slideIndex = 1}

  $("#block"+block_id+" .card-item-"+slideIndex).addClass("card-active");
  $("#block"+block_id+" .card-image").addClass("card-image-"+slideIndex);

  interval["block"+block_id] = setTimeout(function() {blockSlide(block_id, slideIndex);}, 5000); // Change every 1 seconds
}

//Function for mouseover action on each slide item of blocks
function itemMouseover(block_id, slideIndex){
  clearTimeout(interval["block"+block_id]);

  var i;
  var items = document.querySelectorAll("#block"+block_id+" [class*=card-item-]");

  for (i = 1; i <= items.length; i++) {
     $("#block"+block_id+" .card-item-"+i).removeClass("card-active");
     $("#block"+block_id+" .card-image").removeClass("card-image-"+i);
  }

  $("#block"+block_id+" .card-item-"+slideIndex).addClass("card-active");
  $("#block"+block_id+" .card-image").addClass("card-image-"+slideIndex);
}

$(document).ready(function () {
    $('.google-btn-round')
        .mouseover(function () {
        $(this).attr("src", "assets/images/teamwork/Play-icon-hover.png");
    })
        .mouseout(function () {
        $(this).attr("src", "assets/images/teamwork/Play-icon.png");
    });

    $('.apple-btn-round')
        .mouseover(function () {
        $(this).attr("src", "assets/images/teamwork/app-store-icon-hover.png");
    })
        .mouseout(function () {
        $(this).attr("src", "assets/images/teamwork/app-store-icon.png");
    });

    $('.web-btn-round')
        .mouseover(function () {
        $(this).attr("src", "assets/images/teamwork/web-icon-hover.png");
    })
        .mouseout(function () {
        $(this).attr("src", "assets/images/teamwork/web-icon.png");
    });
});


