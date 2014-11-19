casper.start('http://www.google.fr/', function() {
    this.capture('/home/casperjs-files/google.png', {
        top: 100,
        left: 100,
        width: 500,
        height: 400
    });
});

casper.run();
