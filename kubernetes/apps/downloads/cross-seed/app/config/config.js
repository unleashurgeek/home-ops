module.exports = {
  delay: 20,
  qbittorrentUrl: "http://qbittorrent.downloads.svc.cluster.local:8080",
  torznab: [
    "http://prowlarr.downloads.svc.cluster.local/1/api?apikey={{ .PROWLARR_API_KEY }}",  // bbt
    "http://prowlarr.downloads.svc.cluster.local/2/api?apikey={{ .PROWLARR_API_KEY }}",  // fnp
    "http://prowlarr.downloads.svc.cluster.local/43/api?apikey={{ .PROWLARR_API_KEY }}", // phd
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
    "/media/downloads/torrent/complete/radarr-anime",
    "/media/downloads/torrent/complete/sonarr-tv",
    "/media/downloads/torrent/complete/sonarr-anime",
  ],
  outputDir: "/config/xseeds",
  torrentDir: "/config/qBittorrent/BT_backup",
}