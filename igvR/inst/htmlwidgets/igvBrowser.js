HTMLWidgets.widget({

  name: 'igvBrowser',

  type: 'output',

  factory: function(genome, tracks) {
    
    igv.createBrowser(div, config);

    config = {
        showKaryo: false,
        showNavigation: true,
        reference: {
          fastaURL: genome,
          cytobandURL: "//dn7ywbm9isq8j.cloudfront.net/genomes/seq/hg19/cytoBand.txt"
        }
        tracks: [
            {
                url: tracks,
                label: "Genes",
                order: 10000
            }
        ]
    };

    browser = igv.createBrowser(div, options);
    
      }

    };
  }
});
