local settings = {
        partyList = {
            columnWidth = 168,
            columns = 1,
            rowHeight = 32,
            rows = 6,
            background = {
                enabled = true,
                imgBottom = {
                    color = '#FFFFFFDD',
                    enabled = true,
                    path = 'assets/ffxi/AllyBgBottom.png',
                    pos = {0,0},
                    size = {160,4},
                },
                imgMid = {
                    color = '#FFFFFFDD',
                    enabled = true,
                    path = 'assets/ffxi/AllyBgMid.png',
                    pos = {0,6},
                    size = {160,4},
                },
                imgTop = {
                    color = '#FFFFFFDD',
                    enabled = true,
                    path = 'assets/ffxi/AllyBgTop.png',
                    pos = {0,0},
                    size = {160,6},
                },
                pos = {7,-6},
            },
            listItem = {
                enabled = true,
                hp = {
                    bar = {
                        animSpeed = 0.1,
                        enabled = true,
                        imgBar = {
                            color = '#FF9597FF',
                            enabled = true,
                            path = 'assets/ffxi/Bar.png',
                            pos = {13,0},
                            size = {102,64},
                        },
                        imgBg = {
                            color = '#FF9597FF',
                            enabled = true,
                            path = 'assets/ffxi/BarBg.png',
                            pos = {0,0},
                            size = {128,64},
                        },
                        imgFg = {
                            color = '#FF9597FF',
                            enabled = true,
                            path = 'assets/ffxi/BarFg.png',
                            pos = {0,0},
                            size = {128,64},
                        },
                        imgGlow = {
                            color = '#FFF2F2FF',
                            enabled = true,
                            path = 'assets/ffxi/BarGlow.png',
                            pos = {13,0},
                            size = {6,64},
                        },
                        imgGlowSides = {
                            color = '#FFF2F2FF',
                            enabled = true,
                            path = 'assets/ffxi/BarGlowSides.png',
                            pos = {11,0},
                            size = {2,64},
                        },
                        pos = {0,0},
                    },
                    enabled = true,
                    hideOutsideZone = true,
                    hpOrangeColor = '#F8BA80FF',
                    hpRedColor = '#FC8182FF',
                    hpYellowColor = '#F3F37CFF',
                    pos = {30,-17},
                    snapToRaster = true,
                    txtValue = {
                        alignRight = true,
                        color = '#F0FFFFFF',
                        enabled = true,
                        font = Grammara,
                        pos = {114,22},
                        size = 8,
                        snapToRaster = true,
                        stroke = '#062D54C8',
                        strokeWidth = 1.5,
                    },
                    zOrder = 2,
                },
                mp = {
                    bar = {
                        animSpeed = 0.1,
                        enabled = true,
                        imgBar = {
                            color = '#FFFF9CFF',
                            enabled = true,
                            path = 'assets/ffxi/AllyBarMP.png',
                            pos = {27,0},
                            size = {74,64},
                        },
                        imgBg = {
                            color = '#FFFF9CFF',
                            enabled = true,
                            path = 'assets/ffxi/AllyBarBgMP.png',
                            pos = {0,0},
                            size = {128,64},
                        },
                        imgFg = {
                            color = '#FFFF9CFF',
                            enabled = true,
                            path = 'assets/ffxi/AllyBarFgMP.png',
                            pos = {0,0},
                            size = {128,64},
                        },
                        imgGlow = {
                            color = '#FFFFF2FF',
                            enabled = true,
                            path = 'assets/ffxi/AllyBarGlowMP.png',
                            pos = {27,0},
                            size = {4,64},
                        },
                        imgGlowSides = {
                            color = '#FFFFF2FF',
                            enabled = true,
                            path = 'assets/ffxi/AllyBarGlowSidesMP.png',
                            pos = {25,0},
                            size = {2,64},
                        },
                        pos = {-14,-8},
                    },
                    enabled = true,
                    hideOutsideZone = true,
                    pos = {70,0},
                    snapToRaster = true,
                    txtValue = {
                        alignRight = true,
                        color = '#F0FFFFFF',
                        enabled = true,
                        font = Grammara,
                        pos = {86,14},
                        size = 8,
                        snapToRaster = true,
                        stroke = '#062D54C8',
                        strokeWidth = 1.5,
                    },
                    zOrder = 3,
                },
                jobIcon = {
                    colors = {
                        dd = '#663535FF',
                        healer = '#3B6529FF',
                        special = '#FF9700FF',
                        support = '#DAB200FF',
                        tank = '#364597FF',
                    },
                    enabled = true,
                    imgBg = {
                        color = '#FFFFFFFF',
                        enabled = true,
                        path = 'assets/jobIcons/bg.png',
                        pos = {0,0},
                        size = {36,36},
                    },
                    imgFrame = {
                        color = '#FFFFFFFF',
                        enabled = true,
                        path = 'assets/jobIcons/frame.png',
                        pos = {0,0},
                        size = {36,36},
                    },
                    imgGradient = {
                        color = '#FFFFFFFF',
                        enabled = true,
                        path = 'assets/jobIcons/gradient.png',
                        pos = {0,0},
                        size = {36,36},
                    },
                    imgHighlight = {
                        color = '#FFFFFFFF',
                        enabled = true,
                        path = 'assets/jobIcons/highlight.png',
                        pos = {-13,-13},
                        size = {62,62},
                    },
                    imgIcon = {
                        color = '#FFFFFFFF',
                        enabled = true,
                        path },
                        pos = {0,0},
                        size = {36,36},
                    },
                    path = 'assets/jobIcons/',
                    pos = {-6,2},
                    scale = {0.75,0.75},
                    snapToRaster = true,
                    zOrder = 4,
                },
                leader = {
                    enabled = true,
                    imgAlliance = {
                        color = '#FFFFFFFF',
                        enabled = true,
                        path = 'assets/ffxi/Leader.png',
                        pos = {7,0},
                        size = {7,5},
                    },
                    imgParty = {
                        color = '#E6E159FF',
                        enabled = true,
                        path = 'assets/ffxi/Leader.png',
                        pos = {0,0},
                        size = {7,5},
                    },
                    imgQuarterMaster = {
                        color = '#66E659FF',
                        enabled = true,
                        path = 'assets/ffxi/Leader.png',
                        pos = {14,0},
                        size = {7,5},
                    },
                    pos = {42,21},
                    zOrder = 7,
                },
                hover = {
                    color = '#9C94E8AA',
                    enabled = true,
                    path = 'assets/ffxi/AllyHover.png',
                    pos = {18,-6},
                    size = {156,44},
                    zOrder = 0,
                },
                cursor = {
                    color = '#FFFFFFFF',
                    enabled = true,
                    path = 'assets/ffxi/Cursor.png',
                    pos = {-26,7},
                    size = {37,24},
                    scale = {0.75,0.75},
                    zOrder = 5,
                },
                txtName = {
                    color = '#F0FFFFFF',
                    enabled = true,
                    font = Arial,
                    pos = {24,0},
                    size = 10,
                    snapToRaster = true,
                    stroke = '#062D54C8',
                    strokeWidth = 2,
                    maxChars = 9,
                    zOrder = 1,
                },
                txtZone = {
                    alignRight = true,
                    color = '#F0FFFFFF',
                    enabled = true,
                    font = Arial,
                    pos = {160,14},
                    short = true,
                    size = 10,
                    snapToRaster = true,
                    stroke = '#062D54C8',
                    strokeWidth = 2,
                    zOrder = 6,
                },
            },
        }

return settings;
