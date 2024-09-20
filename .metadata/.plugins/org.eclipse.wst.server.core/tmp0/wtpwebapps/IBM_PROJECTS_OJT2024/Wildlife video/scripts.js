function openLightbox(videoSrc) {
    var lightbox = document.getElementById('lightbox');
    var lightboxVideo = document.getElementById('lightbox-video');

    lightbox.style.display = "block";
    lightboxVideo.src = videoSrc;
    lightboxVideo.play();
}

function closeLightbox() {
    var lightbox = document.getElementById('lightbox');
    var lightboxVideo = document.getElementById('lightbox-video');

    lightbox.style.display = "none";
    lightboxVideo.pause();
    lightboxVideo.src = "";
}
