// $(document).ready(function() {
//   var tn_array = $(".slides img").map(function () {
//     return $(this).attr("src");
//   }).get();
//
//   $('#MainImage').attr('src', tn_array[0]); // sets 1st image of list as main image
//   $('#Previous').css("visibility", "hidden"); // hide `previous` button on load
//
//   var lengthImages = tn_array.length; // image list length
//   var CurrentImage = 0; // keep current image index
//   var widthImg = 200; // image width
//   var BottomLength = 2; // how many images currently show in slide
//   var IndexDiff;
//
//   $('#next').click(function () {
//     $('#MainImage').fadeOut('slow', function () {
//         CurrImage = CurrImage + 1; // Update current image index
//         $('#slider .slides').animate({ 'margin-left': '-=' +
//         widthImg}, 1000); //animate left margin of the slides list with the value
//                 //of -widthImg (-200px). So the bottom slider will animate to left side
//         $('#MainImage').attr('src', tn_array[CurrImage]); // set next image to Main image
//         if (CurrImage == lengthImages - BottomLength) { //This condition is checking
//                         //whether the bottom slider has comes to end or not.
//             $('#next').css("visibility", "hidden"); // if true then hide
//         }
//         if ($('#previous').css("visibility") ==
//                 "hidden") { // if Previous button is hidden
//             $('#previous').css("visibility",
//                 "visible"); //then set it to visible
//         }
//     }).fadeIn(1000);
// });
// $('#previous').click(function () {
//     $('#MainImage').fadeOut('slow', function () {
//         CurrImage = CurrImage - 1; // Update the current image index
//         $('#slider .slides').animate({ 'margin-left': '+=' + widthImg },
//             1000); //animate the bottom slider with += widthImg, it will animate the slider to right
//         $('#MainImage').attr('src', tn_array[CurrImage]); // set corresponding image to main image
//         if (CurrImage == 0) { // if current slide is the first image
//             $('#previous').css("visibility", "hidden"); // then hide the previous button
//         }
//         if ($('#next').css("visibility") == "hidden") { // if next button is hidden
//             $('#next').css("visibility", "visible"); // then set it to visible
//         }
//
//     }).fadeIn(1000);
// });
// $('.slides li img').click(function () {
//        var Imagesrc = $(this).attr('src'); // get the selected image src
//        var ImageIndex = $(this).parent('.slide').index(); // get the selected list item index
//
//        $('#MainImage').fadeOut('slow', function () {
//            if (ImageIndex <= lengthImages - BottomLength) { // this condition checks
//                    //whether the bottom slider has come to the end or not.
//                    //Also this will prevent sliding bottom slider to the left.
//                IndexDiff = CurrImage; // Assign Current image index to IndexDiff temporary
//                CurrImage = ImageIndex; // Assign selected image index to current image value
//                IndexDiff = Math.abs(IndexDiff - CurrImage); // get the difference
//                $('#slider .slides').animate({ 'margin-left': '-=' +
//                    widthImg * IndexDiff }, 1000); // slide the bottom slider to left by setting
//                                //left margin to (widthImg * IndexDiff) pixels.
//                $('#MainImage').attr('src', Imagesrc); // set selected image source as main image
//
//                if (ImageIndex != 0) { // image index is not equals to zero
//                    if ($('#previous').css("visibility") == "hidden") { // if previous button is hidden
//                        $('#previous').css("visibility", "visible"); //set it to visible
//                    }
//                }
//                if (ImageIndex == lengthImages - BottomLength) { // check whether the
//                                // slider has come to end or not
//                    if ($('#next').css("visibility") == "visible") { // if visible
//                        $('#next').css("visibility", "hidden"); // hide next button
//                    }
//                }
//            }
//            else { // if bottom slider has come to end
//                $('#MainImage').attr('src', Imagesrc); // set the image source only.
//                            // No need to update the image index
//            }
//            }).fadeIn(1000);
//    });
// });
