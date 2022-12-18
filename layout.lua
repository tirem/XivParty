--[[
	Copyright © 2022, Tylas
	All rights reserved.

	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions are met:

		* Redistributions of source code must retain the above copyright
		  notice, this list of conditions and the following disclaimer.
		* Redistributions in binary form must reproduce the above copyright
		  notice, this list of conditions and the following disclaimer in the
		  documentation and/or other materials provided with the distribution.
		* Neither the name of XivParty nor the
		  names of its contributors may be used to endorse or promote products
		  derived from this software without specific prior written permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
	DISCLAIMED. IN NO EVENT SHALL <your name> BE LIABLE FOR ANY
	DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
]]

-- DO NOT EDIT VALUES IN THIS FILE if you want to customize a layout, edit the XML files in the layouts directory instead.
-- This file only contains default values and changes wont have any effect!

-- All positions, scales and z-orders are relative to an element's parent.
-- Scale affects all positions and sizes, snapToRaster only affects positions.
-- Due to a windower limitation, z-orders only work between the same type of element (image, text). Texts will always be placed above images!

-- All elements support "enabled", "pos", "scale", "zOrder", "snapToRaster" and all texts support "alignRight". 
-- However some of these properties have been omitted on some elements to keep the XMLs shorter.
-- Add these properties to any element in this file if your custom layout requires them, otherwise they will not be loaded from the XML.

local layout = {}

layout.partyList = {}
layout.partyList.rows = 6
layout.partyList.columns = 1
layout.partyList.rowHeight = 46
layout.partyList.columnWidth = 410

-- Background
layout.bg = {}
layout.bg.enabled = true
layout.bg.pos = L{ 0, -21 }

layout.bg.imgTop = {}
layout.bg.imgTop.enabled = true
layout.bg.imgTop.pos = L{ 0, 0 }
layout.bg.imgTop.path = 'assets/XivBgTop.png'
layout.bg.imgTop.size = L{ 377, 21 }
layout.bg.imgTop.color = '#FFFFFFDD'

layout.bg.imgMid = {}
layout.bg.imgMid.enabled = true
layout.bg.imgMid.pos = L{ 0, 21 }
layout.bg.imgMid.path = 'assets/XivBgMid.png' -- this texture is repeated vertically when the list resizes
layout.bg.imgMid.size = L{ 377, 12 } -- Y size will be overwritten in code, value here still required as a base
layout.bg.imgMid.color = '#FFFFFFDD'

layout.bg.imgBottom = {}
layout.bg.imgBottom.enabled = true
layout.bg.imgBottom.pos = L{ 0, 0 } -- Y pos will be overwritten in code, value here irrelevant
layout.bg.imgBottom.path = 'assets/XivBgBottom.png'
layout.bg.imgBottom.size = L{ 377, 21 }
layout.bg.imgBottom.color = '#FFFFFFDD'

-- List item - a container for all UI elements of a party member, position is set in code
layout.listItem = {}
layout.listItem.enabled = true

-- HP bar
layout.hp = {}
layout.hp.enabled = true
layout.hp.pos = L{ 19, -7 }
layout.hp.zOrder = 1
layout.hp.hpYellowColor = '#F3F37CFF' -- HP < 75%
layout.hp.hpOrangeColor = '#F8BA80FF' -- HP < 50%
layout.hp.hpRedColor = '#FC8182FF' -- HP < 25%

layout.hp.text = {}
layout.hp.text.enabled = true
layout.hp.text.pos = L{ 120, 35 }
layout.hp.text.font = 'Grammara'
layout.hp.text.size = 11
layout.hp.text.color = '#F0FFFFFF'
layout.hp.text.stroke = '#062D54C8'
layout.hp.text.strokeWidth = 2
layout.hp.text.alignRight = true
layout.hp.text.snapToRaster = true

layout.hp.bar = {}
layout.hp.bar.enabled = true
layout.hp.bar.pos = L{ 0, 0 }
layout.hp.bar.animSpeed = 0.1 -- speed of the bar animation in percent per frame (higher is faster)
layout.hp.bar.barOverlap = 1 -- number of pixels (on each side) the imgBar is wider than the opening in the imgFg

layout.hp.bar.imgBg = {}
layout.hp.bar.imgBg.enabled = true
layout.hp.bar.imgBg.pos = L{ 0, 0 }
layout.hp.bar.imgBg.path = 'assets/XivBarBG.png'
layout.hp.bar.imgBg.size = L{ 128, 64 }
layout.hp.bar.imgBg.color = '#FFFFFFFF'
layout.hp.bar.imgBg.snapToRaster = true

layout.hp.bar.imgBar = {}
layout.hp.bar.imgBar.enabled = true
layout.hp.bar.imgBar.pos = L{ 12, 0 } -- centered inside the foreground image = fg.pos + (fg.size - bar.size) / 2
layout.hp.bar.imgBar.path = 'assets/XivBar.png'
layout.hp.bar.imgBar.size = L{ 104, 64 }
layout.hp.bar.imgBar.color = '#FFFFFFFF'
layout.hp.bar.imgBar.snapToRaster = true

layout.hp.bar.imgFg = {}
layout.hp.bar.imgFg.enabled = true
layout.hp.bar.imgFg.pos = L{ 0, 0 }
layout.hp.bar.imgFg.path = 'assets/XivBarFG.png'
layout.hp.bar.imgFg.size = L{ 128, 64 }
layout.hp.bar.imgFg.color = '#FFFFFFFF'
layout.hp.bar.imgFg.snapToRaster = true

layout.hp.bar.imgGlow = {}
layout.hp.bar.imgGlow.enabled = true
layout.hp.bar.imgGlow.pos = L{ 12, 0 } -- centered inside foreground image = bar.pos.y + (bar.size.y - glow.size.y ) / 2, x position set in code
layout.hp.bar.imgGlow.path = 'assets/XivBarGlow.png'
layout.hp.bar.imgGlow.size = L{ 6, 64 }
layout.hp.bar.imgGlow.color = '#FFFFFFFF'
layout.hp.bar.imgGlow.snapToRaster = true

-- MP bar
layout.mp = {}
layout.mp.enabled = true
layout.mp.pos = L{ 150, -7 }
layout.mp.zOrder = 2

layout.mp.text = {}
layout.mp.text.enabled = true
layout.mp.text.pos = L{ 120, 35 }
layout.mp.text.font = 'Grammara'
layout.mp.text.size = 11
layout.mp.text.color = '#F0FFFFFF'
layout.mp.text.stroke = '#062D54C8'
layout.mp.text.strokeWidth = 2
layout.mp.text.alignRight = true
layout.mp.text.snapToRaster = true

layout.mp.bar = {}
layout.mp.bar.enabled = true
layout.mp.bar.pos = L{ 0, 0 }
layout.mp.bar.animSpeed = 0.1 -- speed of the bar animation in percent per frame (higher is faster)
layout.mp.bar.barOverlap = 1 -- number of pixels (on each side) the imgBar is wider than the opening in the imgFg

layout.mp.bar.imgBg = {}
layout.mp.bar.imgBg.enabled = true
layout.mp.bar.imgBg.pos = L{ 0, 0 }
layout.mp.bar.imgBg.path = 'assets/XivBarBG.png'
layout.mp.bar.imgBg.size = L{ 128, 64 }
layout.mp.bar.imgBg.color = '#FFFFFFFF'
layout.mp.bar.imgBg.snapToRaster = true

layout.mp.bar.imgBar = {}
layout.mp.bar.imgBar.enabled = true
layout.mp.bar.imgBar.pos = L{ 12, 0 } -- centered inside the foreground image = fg.pos + (fg.size - bar.size) / 2
layout.mp.bar.imgBar.path = 'assets/XivBar.png'
layout.mp.bar.imgBar.size = L{ 104, 64 }
layout.mp.bar.imgBar.color = '#FFFFFFFF'
layout.mp.bar.imgBar.snapToRaster = true

layout.mp.bar.imgFg = {}
layout.mp.bar.imgFg.enabled = true
layout.mp.bar.imgFg.pos = L{ 0, 0 }
layout.mp.bar.imgFg.path = 'assets/XivBarFG.png'
layout.mp.bar.imgFg.size = L{ 128, 64 }
layout.mp.bar.imgFg.color = '#FFFFFFFF'
layout.mp.bar.imgFg.snapToRaster = true

layout.mp.bar.imgGlow = {}
layout.mp.bar.imgGlow.enabled = true
layout.mp.bar.imgGlow.pos = L{ 12, 0 } -- centered inside foreground image = bar.pos.y + (bar.size.y - glow.size.y ) / 2, x position set in code
layout.mp.bar.imgGlow.path = 'assets/XivBarGlow.png'
layout.mp.bar.imgGlow.size = L{ 6, 64 }
layout.mp.bar.imgGlow.color = '#FFFFFFFF'
layout.mp.bar.imgGlow.snapToRaster = true

-- TP bar
layout.tp = {}
layout.tp.enabled = true
layout.tp.pos = L{ 281, -7 }
layout.tp.zOrder = 3
layout.tp.tpFullColor = '#50B4FAFF' -- TP > 1000

layout.tp.text = {}
layout.tp.text.enabled = true
layout.tp.text.pos = L{ 120, 35 }
layout.tp.text.font = 'Grammara'
layout.tp.text.size = 11
layout.tp.text.color = '#F0FFFFFF'
layout.tp.text.stroke = '#062D54C8'
layout.tp.text.strokeWidth = 2
layout.tp.text.alignRight = true
layout.tp.text.snapToRaster = true

layout.tp.bar = {}
layout.tp.bar.enabled = true
layout.tp.bar.pos = L{ 0, 0 }
layout.tp.bar.animSpeed = 0.1 -- speed of the bar animation in percent per frame (higher is faster)
layout.tp.bar.barOverlap = 1 -- number of pixels (on each side) the imgBar is wider than the opening in the imgFg

layout.tp.bar.imgBg = {}
layout.tp.bar.imgBg.enabled = true
layout.tp.bar.imgBg.pos = L{ 0, 0 }
layout.tp.bar.imgBg.path = 'assets/XivBarBG.png'
layout.tp.bar.imgBg.size = L{ 128, 64 }
layout.tp.bar.imgBg.color = '#FFFFFFFF'
layout.tp.bar.imgBg.snapToRaster = true

layout.tp.bar.imgBar = {}
layout.tp.bar.imgBar.enabled = true
layout.tp.bar.imgBar.pos = L{ 12, 0 } -- centered inside the foreground image = fg.pos + (fg.size - bar.size) / 2
layout.tp.bar.imgBar.path = 'assets/XivBar.png'
layout.tp.bar.imgBar.size = L{ 104, 64 }
layout.tp.bar.imgBar.color = '#FFFFFFFF'
layout.tp.bar.imgBar.snapToRaster = true

layout.tp.bar.imgFg = {}
layout.tp.bar.imgFg.enabled = true
layout.tp.bar.imgFg.pos = L{ 0, 0 }
layout.tp.bar.imgFg.path = 'assets/XivBarFG.png'
layout.tp.bar.imgFg.size = L{ 128, 64 }
layout.tp.bar.imgFg.color = '#FFFFFFFF'
layout.tp.bar.imgFg.snapToRaster = true

layout.tp.bar.imgGlow = {}
layout.tp.bar.imgGlow.enabled = true
layout.tp.bar.imgGlow.pos = L{ 12, 0 } -- centered inside foreground image = bar.pos.y + (bar.size.y - glow.size.y ) / 2, x position set in code
layout.tp.bar.imgGlow.path = 'assets/XivBarGlow.png'
layout.tp.bar.imgGlow.size = L{ 6, 64 }
layout.tp.bar.imgGlow.color = '#FFFFFFFF'
layout.tp.bar.imgGlow.snapToRaster = true

-- job icon
layout.jobIcon = {}
layout.jobIcon.enabled = true
layout.jobIcon.pos = L{ -11, -2 }
layout.jobIcon.zOrder = 4
layout.jobIcon.scale = L{ 1, 1 }
layout.jobIcon.path = 'assets/jobIcons/' -- where all job icons are located, named <3 letter job>.png
layout.jobIcon.snapToRaster = true

layout.jobIcon.colors = {} -- background colors for job roles
layout.jobIcon.colors.dd = '#663535FF'
layout.jobIcon.colors.tank = '#364597FF'
layout.jobIcon.colors.healer = '#3B6529FF'
layout.jobIcon.colors.support = '#DAB200FF'
layout.jobIcon.colors.special = '#FF9700FF'

layout.jobIcon.imgFrame = {}
layout.jobIcon.imgFrame.enabled = true
layout.jobIcon.imgFrame.pos = L{ 0, 0 }
layout.jobIcon.imgFrame.path = 'assets/jobIcons/frame.png'
layout.jobIcon.imgFrame.size = L{ 36, 36 }
layout.jobIcon.imgFrame.color = '#FFFFFFFF'

layout.jobIcon.imgIcon = {}
layout.jobIcon.imgIcon.enabled = true
layout.jobIcon.imgIcon.pos = L{ 0, 0 }
layout.jobIcon.imgIcon.path = '' -- must remain empty, set in code
layout.jobIcon.imgIcon.size = L{ 36, 36 }
layout.jobIcon.imgIcon.color = '#FFFFFFFF'

layout.jobIcon.imgGradient = {}
layout.jobIcon.imgGradient.enabled = true
layout.jobIcon.imgGradient.pos = L{ 0, 0 }
layout.jobIcon.imgGradient.path = 'assets/jobIcons/gradient.png'
layout.jobIcon.imgGradient.size = L{ 36, 36 }
layout.jobIcon.imgGradient.color = '#FFFFFFFF'

layout.jobIcon.imgBg = {}
layout.jobIcon.imgBg.enabled = true
layout.jobIcon.imgBg.pos = L{ 0, 0 }
layout.jobIcon.imgBg.path = 'assets/jobIcons/bg.png'
layout.jobIcon.imgBg.size = L{ 36, 36 }
layout.jobIcon.imgBg.color = '#FFFFFFFF' -- will be overwritten with role colors

layout.jobIcon.imgHighlight = {}
layout.jobIcon.imgHighlight.enabled = true
layout.jobIcon.imgHighlight.pos = L{ -13, -13 }
layout.jobIcon.imgHighlight.path = 'assets/jobIcons/highlight.png'
layout.jobIcon.imgHighlight.size = L{ 62, 62 }
layout.jobIcon.imgHighlight.color = '#FFFFFFFF'

-- leader icons
layout.leader = {}
layout.leader.enabled = true
layout.leader.pos = L{ -23, -6 }
layout.leader.zOrder = 9
layout.leader.scale = L{ 1, 1 }

layout.leader.imgParty = {}
layout.leader.imgParty.enabled = true
layout.leader.imgParty.pos = L{ 0, 0 }
layout.leader.imgParty.path = 'assets/XivLeader.png'
layout.leader.imgParty.size = L{ 22, 22 }
layout.leader.imgParty.color = '#FFFFFFFF'

layout.leader.imgAlliance = {}
layout.leader.imgAlliance.enabled = true
layout.leader.imgAlliance.pos = L{ 0, 11 }
layout.leader.imgAlliance.path = 'assets/XivAllianceLeader.png'
layout.leader.imgAlliance.size = L{ 22, 22 }
layout.leader.imgAlliance.color = '#FFFFFFFF'

layout.leader.imgQuarterMaster = {}
layout.leader.imgQuarterMaster.enabled = true
layout.leader.imgQuarterMaster.pos = L{ 0, 22 }
layout.leader.imgQuarterMaster.path = 'assets/XivQuarterMaster.png'
layout.leader.imgQuarterMaster.size = L{ 22, 22 }
layout.leader.imgQuarterMaster.color = '#FFFFFFFF'

-- range indicator
layout.range = {}
layout.range.enabled = true
layout.range.pos = L{ 30, 30 }
layout.range.zOrder = 10

layout.range.imgNear = {}
layout.range.imgNear.enabled = true
layout.range.imgNear.pos = L { 0, 0 }
layout.range.imgNear.path = 'assets/RangeIndicator.png'
layout.range.imgNear.size = L{ 10, 10 }
layout.range.imgNear.color = '#FFFFFFFF'

layout.range.imgFar = {}
layout.range.imgFar.enabled = true
layout.range.imgFar.pos = L { 0, 0 }
layout.range.imgFar.path = 'assets/RangeIndicator_far.png'
layout.range.imgFar.size = L{ 10, 10 }
layout.range.imgFar.color = '#FFFFFFFF'

-- cursor image
layout.cursor = {}
layout.cursor.enabled = true
layout.cursor.pos = L{ 20, -8 }
layout.cursor.zOrder = 0
layout.cursor.path = 'assets/XivCursor.png'
layout.cursor.size = L{ 390, 60 }
layout.cursor.color = '#FFFFFFFF'

-- buff icons
layout.buffIcons = {}
layout.buffIcons.enabled = true
layout.buffIcons.pos = L{ 293, 0 }
layout.buffIcons.zOrder = 11
layout.buffIcons.path = 'assets/buffIcons/' -- directory where buff icons can be found. must follow naming pattern: <buffId>.png
layout.buffIcons.size = L{ 20, 20 } -- size of all buff icon images
layout.buffIcons.color = '#FFFFFFFF' -- color of all buff icon images
layout.buffIcons.spacing = L{ 0, 1 } -- spacing between each icon
layout.buffIcons.numIconsByRow = L{ 19, 13 } -- number of icons to display in each row (max 32 in total)
layout.buffIcons.offsetByRow = L{ 0, 6 } -- offset each row by this many icons to the right
layout.buffIcons.alignRight = false -- icons will extend from right to left (adjust pos, origin will change to the right side!)

-- text labels
layout.text = {}
layout.text.name = {}
layout.text.name.enabled = true
layout.text.name.pos = L{ 95, 1 }
layout.text.name.zOrder = 5
layout.text.name.font = 'Arial'
layout.text.name.size = 15
layout.text.name.color = '#F0FFFFFF'
layout.text.name.stroke = '#062D54C8'
layout.text.name.strokeWidth = 2
layout.text.name.snapToRaster = true

layout.text.zone = {}
layout.text.zone.enabled = true
layout.text.zone.pos = L{ 292, 1 }
layout.text.zone.zOrder = 6
layout.text.zone.font = 'Arial'
layout.text.zone.size = 13
layout.text.zone.color = '#F0FFFFFF'
layout.text.zone.stroke = '#062D54C8'
layout.text.zone.strokeWidth = 2
layout.text.zone.short = false -- display short zone name
layout.text.zone.alignRight = false -- right align the text to the right end of the TP bar (use short zone names or text might overlap with player name)
layout.text.zone.snapToRaster = true

layout.text.job = {}
layout.text.job.enabled = true
layout.text.job.pos = L{ 30, 0 }
layout.text.job.zOrder = 7
layout.text.job.font = 'Arial'
layout.text.job.size = 8
layout.text.job.color = '#F0FFFFFF'
layout.text.job.stroke = '#062D54C8'
layout.text.job.strokeWidth = 1
layout.text.job.snapToRaster = true

layout.text.subJob = {}
layout.text.subJob.enabled = true
layout.text.subJob.pos = L{ 39, 9 }
layout.text.subJob.zOrder = 8
layout.text.subJob.font = 'Arial'
layout.text.subJob.size = 8
layout.text.subJob.color = '#F0FFFFFF'
layout.text.subJob.stroke = '#062D54C8'
layout.text.subJob.strokeWidth = 1
layout.text.subJob.snapToRaster = true

return layout