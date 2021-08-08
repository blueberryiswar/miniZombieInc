return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 23,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 2,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "simple_map",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "../asset/simple_map.png",
      imagewidth = 128,
      imageheight = 128,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 64,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 23,
      id = 1,
      name = "ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 18, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 1, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 5, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 18, 37, 37, 37, 18, 37, 37, 11, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 18, 37, 11, 37, 37, 37, 18, 37, 37, 37, 18, 37, 37, 11, 37, 37, 37, 37, 18, 37, 37, 18, 37, 11, 37, 37, 37, 18, 37, 37, 37, 37, 37, 18, 37,
        37, 37, 1, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 3, 5, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 17, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37,
        37, 37, 37, 37, 18, 37, 37, 11, 37, 18, 37, 37, 37, 37, 18, 37, 37, 37, 11, 37, 18, 37, 37, 37, 18, 37, 18, 37, 11, 37, 17, 37, 37, 37, 37, 37, 18, 11, 37, 37,
        37, 37, 1, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 12, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 18, 37, 37, 37, 37, 17, 37, 11, 37, 37, 37, 18, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 18, 37, 11, 37, 37, 37, 37, 37, 37, 18, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 1, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 37,
        37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 18, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 18, 37, 11, 37, 37, 18, 37, 37, 37, 37, 37, 18, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 1, 2, 2, 10, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 12, 37, 37, 37, 37, 37, 37, 37, 37, 18, 11, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 19, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37,
        37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37
      }
    }
  }
}