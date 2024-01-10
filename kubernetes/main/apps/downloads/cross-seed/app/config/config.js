module.exports = {
  delay: 20,
  qbittorrentUrl: "http://qbittorrent.downloads.svc.cluster.local:8080",
  torznab: [
    "http://prowlarr.downloads.svc.cluster.local/1/api?apikey={{ .PROWLARR_API_KEY }}",  // bbt
    "http://prowlarr.downloads.svc.cluster.local/2/api?apikey={{ .PROWLARR_API_KEY }}",  // fnp
  ],
  port: process.env.CROSSSEED_PORT || 80,
  apiAuth: false,
  action: "inject",
  includeEpisodes: true,
  includeNonVideos: true,
  duplicateCategories: true,
  matchMode: "safe",
  skipRecheck: true,
  linkType: "hardlink",
  linkDir: "/media/downloads/torrent/complete/cross-seed",
  dataDirs: [
    "/media/downloads/torrent/complete/radarr-movies",
    "/media/downloads/torrent/complete/radarr-hq",
  ],
  outputDir: "/config/xseeds",
  torrentDir: "/config/qBittorrent/BT_backup",
}