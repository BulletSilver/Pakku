use Pakku::Dist::Raku::Path;

unit class Pakku::Dist::Raku::Inst;
  also is Pakku::Dist::Raku;
  also does Distribution;



# Needed to implement Distribution role
# Required by .uninstall
#Stolen from Rakudo's InstalledDistribution
method content($address) {
  my $entry = $.meta<provides>.values.first: { $_{$address}:exists };
  my $file = $entry
    ?? $.prefix.add('sources').add($entry{$address}<file>)
    !! $.prefix.add('resources').add($.meta<files>{$address});

  $file.open(:r)
}
