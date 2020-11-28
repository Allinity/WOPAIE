local Allinity = {}
local utility = {}

function Allinity:CreateWindow(gamename1)
    gamename1 = gamename1 or "gamename1"
    local AlinityLib = Instance.new("ScreenGui")
    local AlinityFrame = Instance.new("Frame")
    local mainHeader = Instance.new("Frame")
    local mainCorner = Instance.new("UICorner")
    local allinity = Instance.new("TextLabel")
    local hubAndGame = Instance.new("TextLabel")
    local mainSide = Instance.new("Frame")
    local mainCorner_2 = Instance.new("UICorner")
    local sidefill = Instance.new("Frame")
    local allTabs = Instance.new("Frame")
    local tabList = Instance.new("UIListLayout")
    local tabPadding = Instance.new("UIPadding")
    local sidefill_2 = Instance.new("Frame")
    local pageFrame = Instance.new("Frame")
    local mainCorner_4 = Instance.new("UICorner")
    local allinity_2 = Instance.new("TextLabel")
    local hub = Instance.new("TextLabel")
    local infotext = Instance.new("TextLabel")
    local discordtext = Instance.new("TextLabel")
    local dcbtn = Instance.new("ImageButton")
    local allinity_3 = Instance.new("TextLabel")
    local hub_2 = Instance.new("TextLabel")
    local mainCorner_5 = Instance.new("UICorner")
    local pageFolder = Instance.new("Folder")

    local UserInputService = game:GetService("UserInputService")

    local TopBar = mainHeader

    local Camera = workspace:WaitForChild("Camera")

    local DragMousePosition
    local FramePosition
    local Draggable = false
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = true
            DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
            FramePosition = Vector2.new(AlinityFrame.Position.X.Scale, AlinityFrame.Position.Y.Scale)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if Draggable == true then
            local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / Camera.ViewportSize)
            AlinityFrame.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = false
        end
    end)

    AlinityLib.Name = "AlinityLib"
    AlinityLib.Parent = game.CoreGui
    AlinityLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    AlinityLib.ResetOnSpawn = false

    AlinityFrame.Name = "AlinityFrame"
    AlinityFrame.Parent = AlinityLib
    AlinityFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    AlinityFrame.BorderSizePixel = 0
    AlinityFrame.Position = UDim2.new(0.349090904, 0, 0.348300993, 0)
    AlinityFrame.Size = UDim2.new(0, 566, 0, 343)

    mainHeader.Name = "mainHeader"
    mainHeader.Parent = AlinityFrame
    mainHeader.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    mainHeader.BorderSizePixel = 0
    mainHeader.Position = UDim2.new(-0.000732421875, 0, -0.00155319343, 0)
    mainHeader.Size = UDim2.new(0, 566, 0, 44)

    mainCorner.CornerRadius = UDim.new(0, 5)
    mainCorner.Name = "mainCorner"
    mainCorner.Parent = mainHeader

    allinity.Name = "allinity"
    allinity.Parent = mainHeader
    allinity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    allinity.BackgroundTransparency = 1.000
    allinity.Position = UDim2.new(0.0229681972, 0, 0.0121078491, 0)
    allinity.Size = UDim2.new(0, 58, 0, 43)
    allinity.Font = Enum.Font.GothamSemibold
    allinity.Text = "Allinity"
    allinity.TextColor3 = Color3.fromRGB(248, 139, 255)
    allinity.TextSize = 18.000
    allinity.TextXAlignment = Enum.TextXAlignment.Left

    hubAndGame.Name = "hubAndGame"
    hubAndGame.Parent = mainHeader
    hubAndGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hubAndGame.BackgroundTransparency = 1.000
    hubAndGame.Position = UDim2.new(0.137809187, 0, 0.0121078491, 0)
    hubAndGame.Size = UDim2.new(0, 150, 0, 43)
    hubAndGame.Font = Enum.Font.GothamSemibold
    hubAndGame.Text = "Hub : "..gamename1
    hubAndGame.TextColor3 = Color3.fromRGB(255, 255, 255)
    hubAndGame.TextSize = 18.000
    hubAndGame.TextXAlignment = Enum.TextXAlignment.Left

    mainSide.Name = "mainSide"
    mainSide.Parent = AlinityFrame
    mainSide.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    mainSide.BorderSizePixel = 0
    mainSide.Position = UDim2.new(-0.000732421875, 0, 0.126726687, 0)
    mainSide.Size = UDim2.new(0, 143, 0, 299)

    mainCorner_2.CornerRadius = UDim.new(0, 5)
    mainCorner_2.Name = "mainCorner"
    mainCorner_2.Parent = mainSide

    sidefill.Name = "sidefill"
    sidefill.Parent = mainSide
    sidefill.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    sidefill.BorderSizePixel = 0
    sidefill.Position = UDim2.new(0.95104897, 0, 0, 0)
    sidefill.Size = UDim2.new(0, 7, 0, 299)

    allTabs.Name = "allTabs"
    allTabs.Parent = mainSide
    allTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    allTabs.BackgroundTransparency = 1.000
    allTabs.Size = UDim2.new(0, 143, 0, 289)

    tabList.Name = "tabList"
    tabList.Parent = allTabs
    tabList.SortOrder = Enum.SortOrder.LayoutOrder
    tabList.Padding = UDim.new(0, 5)

    tabPadding.Name = "tabPadding"
    tabPadding.Parent = allTabs
    tabPadding.PaddingLeft = UDim.new(0, 7)
    tabPadding.PaddingTop = UDim.new(0, 5)

    sidefill_2.Name = "sidefill"
    sidefill_2.Parent = mainSide
    sidefill_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    sidefill_2.BorderSizePixel = 0
    sidefill_2.Size = UDim2.new(0, 7, 0, 282)

    pageFrame.Name = "pageFrame"
    pageFrame.Parent = AlinityFrame
    pageFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    pageFrame.Position = UDim2.new(0.266784459, 0, 0.139941692, 0)
    pageFrame.Size = UDim2.new(0, 406, 0, 286)

    mainCorner_4.CornerRadius = UDim.new(0, 5)
    mainCorner_4.Name = "mainCorner"
    mainCorner_4.Parent = pageFrame

    allinity_2.Name = "allinity"
    allinity_2.Parent = pageFrame
    allinity_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    allinity_2.BackgroundTransparency = 1.000
    allinity_2.Position = UDim2.new(0.372721881, 0, 0.00161833875, 0)
    allinity_2.Size = UDim2.new(0, 58, 0, 43)
    allinity_2.Font = Enum.Font.GothamSemibold
    allinity_2.Text = "Allinity"
    allinity_2.TextColor3 = Color3.fromRGB(248, 139, 255)
    allinity_2.TextSize = 18.000
    allinity_2.TextXAlignment = Enum.TextXAlignment.Left

    hub.Name = "hub"
    hub.Parent = pageFrame
    hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hub.BackgroundTransparency = 1.000
    hub.Position = UDim2.new(0.534361005, 0, 0.00161828531, 0)
    hub.Size = UDim2.new(0, 36, 0, 43)
    hub.Font = Enum.Font.GothamSemibold
    hub.Text = " Hub"
    hub.TextColor3 = Color3.fromRGB(255, 255, 255)
    hub.TextSize = 18.000
    hub.TextXAlignment = Enum.TextXAlignment.Left

    infotext.Name = "infotext"
    infotext.Parent = pageFrame
    infotext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infotext.BackgroundTransparency = 1.000
    infotext.Position = UDim2.new(0.0180420522, 0, 0.151967943, 0)
    infotext.Size = UDim2.new(0, 398, 0, 61)
    infotext.Font = Enum.Font.Nunito
    infotext.Text = "             is a Roblox Hub, that makes your Exploiting Expierience easier. We provide you one of the best hubs and hope you enjoy it!."
    infotext.TextColor3 = Color3.fromRGB(175, 175, 175)
    infotext.TextSize = 18.000
    infotext.TextWrapped = true
    infotext.TextYAlignment = Enum.TextYAlignment.Top

    discordtext.Name = "discordtext"
    discordtext.Parent = pageFrame
    discordtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    discordtext.BackgroundTransparency = 1.000
    discordtext.Position = UDim2.new(0.017, 0,0.904, 0)
    discordtext.Size = UDim2.new(0, 300, 0, 27)
    discordtext.Font = Enum.Font.Nunito
    discordtext.Text = "https://discord.gg/Hu9rxwg"
    discordtext.TextColor3 = Color3.fromRGB(175, 175, 175)
    discordtext.TextSize = 18.000
    discordtext.TextWrapped = true
    discordtext.TextXAlignment = Enum.TextXAlignment.Left
    discordtext.TextYAlignment = Enum.TextYAlignment.Top

    dcbtn.Name = "dcbtn"
    dcbtn.Parent = pageFrame
    dcbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dcbtn.BackgroundTransparency = 1.000
    dcbtn.Position = UDim2.new(0, 0, 0.821678221, 0)
    dcbtn.Size = UDim2.new(0, 55, 0, 51)
    dcbtn.Image = ""
    dcbtn.ScaleType = Enum.ScaleType.Tile

    allinity_3.Name = "allinity"
    allinity_3.Parent = pageFrame
    allinity_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    allinity_3.BackgroundTransparency = 1.000
    allinity_3.Position = UDim2.new(0.0180420522, 0, 0.151968047, 0)
    allinity_3.Size = UDim2.new(0, 42, 0, 16)
    allinity_3.Font = Enum.Font.Nunito
    allinity_3.Text = "Allinity"
    allinity_3.TextColor3 = Color3.fromRGB(248, 139, 255)
    allinity_3.TextSize = 18.000
    allinity_3.TextXAlignment = Enum.TextXAlignment.Left
    allinity_3.TextYAlignment = Enum.TextYAlignment.Top

    hub_2.Name = "hub"
    hub_2.Parent = pageFrame
    hub_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hub_2.BackgroundTransparency = 1.000
    hub_2.Position = UDim2.new(0.120367788, 0, 0.151967928, 0)
    hub_2.Size = UDim2.new(0, 35, 0, 17)
    hub_2.Font = Enum.Font.Nunito
    hub_2.Text = "  Hub"
    hub_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    hub_2.TextSize = 18.000
    hub_2.TextXAlignment = Enum.TextXAlignment.Left
    hub_2.TextYAlignment = Enum.TextYAlignment.Top

    mainCorner_5.CornerRadius = UDim.new(0, 5)
    mainCorner_5.Name = "mainCorner"
    mainCorner_5.Parent = AlinityFrame

    pageFolder.Parent = pageFrame

    local tabHandler = {}

    function tabHandler:CreateTab(tabName)
        tabName = tabName or "Tab"
        local tabBtn = Instance.new("TextButton")
        local mainCorner_3 = Instance.new("UICorner")
        local newPageContainer = Instance.new("ScrollingFrame")
        local pageElList = Instance.new("UIListLayout")
        local pageElPad = Instance.new("UIPadding")

        tabBtn.Name = "tabBtn"..tabName
        tabBtn.Parent = allTabs
        tabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        tabBtn.Position = UDim2.new(0.0419580452, 0, 0.0200668909, 0)
        tabBtn.Size = UDim2.new(0, 130, 0, 33)
        tabBtn.Font = Enum.Font.GothamSemibold
        tabBtn.Text = tabName
        tabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        tabBtn.TextSize = 14.000

        mainCorner_3.CornerRadius = UDim.new(0, 3)
        mainCorner_3.Name = "mainCorner"
        mainCorner_3.Parent = tabBtn

        newPageContainer.Name = "newPageContainer"..tabName
        newPageContainer.Parent = pageFolder
        newPageContainer.Active = true
        newPageContainer.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        newPageContainer.BorderSizePixel = 0
        newPageContainer.Size = UDim2.new(1, 0, 1, 0)
        newPageContainer.ZIndex = 5
        newPageContainer.ScrollBarThickness = 5
        newPageContainer.Visible = false
        newPageContainer.ScrollBarImageColor3 = Color3.fromRGB(248, 144, 255)

        pageElList.Name = "pageElList"
        pageElList.Parent = newPageContainer
        pageElList.SortOrder = Enum.SortOrder.LayoutOrder
        pageElList.Padding = UDim.new(0, 5)

        pageElPad.Name = "pageElPad"
        pageElPad.Parent = newPageContainer
        pageElPad.PaddingLeft = UDim.new(0, 5)
        pageElPad.PaddingTop = UDim.new(0, 5)

        local function UpdateSize()
            local cS = pageElList.AbsoluteContentSize

            game.TweenService:Create(newPageContainer, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y + 12)
            }):Play()
        end
    
        newPageContainer.ChildAdded:Connect(UpdateSize)
        newPageContainer.ChildRemoved:Connect(UpdateSize)

        tabBtn.MouseButton1Click:Connect(function()
            UpdateSize()
            for i,v in next, pageFolder:GetChildren() do
                v.Visible = false
                UpdateSize()
            end
            for i,v in next, allTabs:GetChildren() do
                if v:IsA("TextButton") then
                    game.TweenService:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(25,25,25),
                        TextColor3 = Color3.fromRGB(255,255,255)
                    }):Play()
                end
            end
            game.TweenService:Create(tabBtn, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                BackgroundColor3 = Color3.fromRGB(21, 21, 21),
                TextColor3 = Color3.fromRGB(248, 139, 255)
            }):Play()
            newPageContainer.Visible = true
        end)

        local ElementHandler = {}

        function ElementHandler:addLabel(lblText)
            lblText = lblText or "Allinity Hub"

            local textLabelFrame = Instance.new("Frame")
            local mainCorner = Instance.new("UICorner")
            local TextLabel = Instance.new("TextLabel")

            textLabelFrame.Name = "textLabelFrame"
            textLabelFrame.Parent = newPageContainer
            textLabelFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            textLabelFrame.Position = UDim2.new(0.0123152705, 0, 0.0174824111, 0)
            textLabelFrame.Size = UDim2.new(0, 388, 0, 44)

            mainCorner.CornerRadius = UDim.new(0, 5)
            mainCorner.Name = "mainCorner"
            mainCorner.Parent = textLabelFrame

            TextLabel.Parent = textLabelFrame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Size = UDim2.new(0, 388, 0, 45)
            TextLabel.Font = Enum.Font.GothamSemibold
            TextLabel.Text = lblText
            TextLabel.TextColor3 = Color3.fromRGB(248, 139, 255)
            TextLabel.TextSize = 14.000
        end
        
        function ElementHandler:addButton(btnText, btnInfor, callback)
            btnText = btnText or "Text Button"
            btnInfor = btnInfor or "Text Button Info"
            callback = callback or function() end

            local textButtonFrame = Instance.new("Frame")
            local mainCorner = Instance.new("UICorner")
            local btnInfo = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local mainCorner_2 = Instance.new("UICorner")

            textButtonFrame.Name = "textButtonFrame"
            textButtonFrame.Parent = newPageContainer
            textButtonFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            textButtonFrame.Position = UDim2.new(0.0123152705, 0, 0.192307591, 0)
            textButtonFrame.Size = UDim2.new(0, 388, 0, 44)

            mainCorner.CornerRadius = UDim.new(0, 5)
            mainCorner.Name = "mainCorner"
            mainCorner.Parent = textButtonFrame

            btnInfo.Name = "btnInfo"
            btnInfo.Parent = textButtonFrame
            btnInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            btnInfo.BackgroundTransparency = 1.000
            btnInfo.Position = UDim2.new(0.389175266, 0, 0, 0)
            btnInfo.Size = UDim2.new(0, 237, 0, 44)
            btnInfo.Font = Enum.Font.GothamSemibold
            btnInfo.Text = btnInfor
            btnInfo.TextColor3 = Color3.fromRGB(206, 206, 206)
            btnInfo.TextSize = 14.000
            btnInfo.TextXAlignment = Enum.TextXAlignment.Left

            TextButton.Parent = textButtonFrame
            TextButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            TextButton.Position = UDim2.new(0.0231958758, 0, 0.19999972, 0)
            TextButton.Size = UDim2.new(0, 126, 0, 26)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 14.000
            TextButton.Text = btnText

            mainCorner_2.CornerRadius = UDim.new(0, 5)
            mainCorner_2.Name = "mainCorner"
            mainCorner_2.Parent = TextButton

            TextButton.MouseButton1Click:Connect(function()
                callback()
            end)

            function ElementHandler:addToggle(infor, callback)
                infor = infor or "Toggle me"

                local toggleFrame = Instance.new("Frame")
                local mainCorner = Instance.new("UICorner")
                local togglebtnFrame = Instance.new("Frame")
                local mainCorner_2 = Instance.new("UICorner")
                local toggleBtn = Instance.new("TextButton")
                local mainCorner_3 = Instance.new("UICorner")
                local toggleinnerlist = Instance.new("UIListLayout")
                local toggleInfo = Instance.new("TextLabel")

                toggleFrame.Name = "toggleFrame"
                toggleFrame.Parent = newPageContainer
                toggleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                toggleFrame.Position = UDim2.new(0.0123152705, 0, 0.0174824111, 0)
                toggleFrame.Size = UDim2.new(0, 388, 0, 44)

                mainCorner.CornerRadius = UDim.new(0, 5)
                mainCorner.Name = "mainCorner"
                mainCorner.Parent = toggleFrame

                togglebtnFrame.Name = "togglebtnFrame"
                togglebtnFrame.Parent = toggleFrame
                togglebtnFrame.BackgroundColor3 = Color3.fromRGB(248, 139, 255)
                togglebtnFrame.Position = UDim2.new(0.0231958758, 0, 0.200000003, 0)
                togglebtnFrame.Size = UDim2.new(0, 26, 0, 26)

                mainCorner_2.CornerRadius = UDim.new(0, 4)
                mainCorner_2.Name = "mainCorner"
                mainCorner_2.Parent = togglebtnFrame

                toggleBtn.Name = "toggleBtn"
                toggleBtn.Parent = togglebtnFrame
                toggleBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                toggleBtn.Position = UDim2.new(0.0231958758, 0, 0.200000003, 0)
                toggleBtn.Size = UDim2.new(0, 24, 0, 24)
                toggleBtn.Font = Enum.Font.GothamSemibold
                toggleBtn.Text = ""
                toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                toggleBtn.TextSize = 16.000

                mainCorner_3.CornerRadius = UDim.new(0, 4)
                mainCorner_3.Name = "mainCorner"
                mainCorner_3.Parent = toggleBtn

                toggleinnerlist.Name = "toggleinnerlist"
                toggleinnerlist.Parent = togglebtnFrame
                toggleinnerlist.HorizontalAlignment = Enum.HorizontalAlignment.Center
                toggleinnerlist.SortOrder = Enum.SortOrder.LayoutOrder
                toggleinnerlist.VerticalAlignment = Enum.VerticalAlignment.Center

                toggleInfo.Name = "toggleInfo"
                toggleInfo.Parent = toggleFrame
                toggleInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                toggleInfo.BackgroundTransparency = 1.000
                toggleInfo.Position = UDim2.new(0.12113402, 0, 0, 0)
                toggleInfo.Size = UDim2.new(0, 341, 0, 44)
                toggleInfo.Font = Enum.Font.GothamSemibold
                toggleInfo.Text = infor
                toggleInfo.TextColor3 = Color3.fromRGB(206, 206, 206)
                toggleInfo.TextSize = 14.000
                toggleInfo.TextXAlignment = Enum.TextXAlignment.Left

                local toggled = false
                toggleBtn.MouseButton1Click:Connect(function()
                    toggled = not toggled
                    callback(toggled)
                    if toggled then
                        game.TweenService:Create(toggleBtn, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                            BackgroundColor3 = Color3.fromRGB(248, 139, 255)
                        }):Play()
                        toggleBtn.Text = "✔"
                    else
                        game.TweenService:Create(toggleBtn, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                            BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        }):Play()
                        toggleBtn.Text = ""
                    end
                end)

                function ElementHandler:addBind(infoo, first, callback)
                    local oldKey = first.Name
                    infoo = infoo or "Bind me"
                    callback = callback or function() end

                    local keybindFrame = Instance.new("Frame")
                    local mainCorner = Instance.new("UICorner")
                    local keybindInfo = Instance.new("TextLabel")
                    local keybindBtn = Instance.new("TextButton")
                    local mainCorner_2 = Instance.new("UICorner")

                    keybindFrame.Name = "keybindFrame"
                    keybindFrame.Parent = newPageContainer
                    keybindFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    keybindFrame.Position = UDim2.new(0.0123152705, 0, 0.0174824111, 0)
                    keybindFrame.Size = UDim2.new(0, 388, 0, 44)

                    mainCorner.CornerRadius = UDim.new(0, 5)
                    mainCorner.Name = "mainCorner"
                    mainCorner.Parent = keybindFrame

                    keybindInfo.Name = "keybindInfo"
                    keybindInfo.Parent = keybindFrame
                    keybindInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    keybindInfo.BackgroundTransparency = 1.000
                    keybindInfo.Position = UDim2.new(0.260309279, 0, 0, 0)
                    keybindInfo.Size = UDim2.new(0, 287, 0, 44)
                    keybindInfo.Font = Enum.Font.GothamSemibold
                    keybindInfo.Text = infoo
                    keybindInfo.TextColor3 = Color3.fromRGB(206, 206, 206)
                    keybindInfo.TextSize = 14.000
                    keybindInfo.TextXAlignment = Enum.TextXAlignment.Left

                    keybindBtn.Name = "keybindBtn"
                    keybindBtn.Parent = keybindFrame
                    keybindBtn.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                    keybindBtn.Position = UDim2.new(0.0231958758, 0, 0.19999972, 0)
                    keybindBtn.Size = UDim2.new(0, 82, 0, 26)
                    keybindBtn.Font = Enum.Font.GothamSemibold
                    keybindBtn.Text = oldKey
                    keybindBtn.TextColor3 = Color3.fromRGB(248, 139, 255)
                    keybindBtn.TextSize = 14.000

                    mainCorner_2.CornerRadius = UDim.new(0, 5)
                    mainCorner_2.Name = "mainCorner"
                    mainCorner_2.Parent = keybindBtn

                    keybindBtn.MouseButton1Click:connect(function(e) 
                        keybindBtn.Text = ". . ."
                        local a, b = game:GetService('UserInputService').InputBegan:wait();
                        if a.KeyCode.Name ~= "Unknown" then
                            keybindBtn.Text = a.KeyCode.Name
                            oldKey = a.KeyCode.Name;
                        end
                    end)
            
                    game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
                        if not ok then 
                            if current.KeyCode.Name == oldKey then 
                                callback()
                            end
                        end
                    end)

                    function ElementHandler:addSlider(minvalue, maxvalue, sliderin, callback)
                        minvalue = minvalue or 0
                        maxvalue = maxvalue or 500
                        callback = callback or function() end
                        sliderin = sliderin or "info ok"
                            
                        local sliderFrame = Instance.new("Frame")
                        local mainCorner = Instance.new("UICorner")
                        local sliderInfo = Instance.new("TextLabel")
                        local sliderOutFrame = Instance.new("Frame")
                        local mainCorner_2 = Instance.new("UICorner")
                        local sliderBtn = Instance.new("TextButton")
                        local mainCorner_3 = Instance.new("UICorner")
                        local sliderDragFrame = Instance.new("Frame")
                        local mainCorner_4 = Instance.new("UICorner")
                        local sliderlist = Instance.new("UIListLayout")
                        local sliderPad = Instance.new("UIPadding")
                        local toggleinnerlist = Instance.new("UIListLayout")
                        local sliderInfo_2 = Instance.new("TextLabel")

                        sliderFrame.Name = "sliderFrame"
                        sliderFrame.Parent = newPageContainer
                        sliderFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        sliderFrame.Position = UDim2.new(0.596059144, 0, 0.0262236707, 0)
                        sliderFrame.Size = UDim2.new(0, 388, 0, 44)

                        mainCorner.CornerRadius = UDim.new(0, 5)
                        mainCorner.Name = "mainCorner"
                        mainCorner.Parent = sliderFrame

                        sliderInfo.Name = "sliderInfo"
                        sliderInfo.Parent = sliderFrame
                        sliderInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        sliderInfo.BackgroundTransparency = 1.000
                        sliderInfo.Position = UDim2.new(0.378865987, 0, 0, 0)
                        sliderInfo.Size = UDim2.new(0, 164, 0, 44)
                        sliderInfo.Font = Enum.Font.GothamSemibold
                        sliderInfo.Text = sliderin
                        sliderInfo.TextColor3 = Color3.fromRGB(206, 206, 206)
                        sliderInfo.TextSize = 14.000
                        sliderInfo.TextXAlignment = Enum.TextXAlignment.Left

                        sliderOutFrame.Name = "sliderOutFrame"
                        sliderOutFrame.Parent = sliderFrame
                        sliderOutFrame.BackgroundColor3 = Color3.fromRGB(248, 139, 255)
                        sliderOutFrame.Position = UDim2.new(0.0231958758, 0, 0.340000004, 0)
                        sliderOutFrame.Size = UDim2.new(0, 130, 0, 14)

                        mainCorner_2.CornerRadius = UDim.new(0, 4)
                        mainCorner_2.Name = "mainCorner"
                        mainCorner_2.Parent = sliderOutFrame

                        sliderBtn.Name = "sliderBtn"
                        sliderBtn.Parent = sliderOutFrame
                        sliderBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        sliderBtn.Position = UDim2.new(0.000118952245, 0, 0.271428585, 0)
                        sliderBtn.Size = UDim2.new(0, 128, 0, 12)
                        sliderBtn.Font = Enum.Font.GothamSemibold
                        sliderBtn.Text = ""
                        sliderBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                        sliderBtn.TextSize = 14.000

                        mainCorner_3.CornerRadius = UDim.new(0, 4)
                        mainCorner_3.Name = "mainCorner"
                        mainCorner_3.Parent = sliderBtn

                        sliderDragFrame.Name = "sliderDragFrame"
                        sliderDragFrame.Parent = sliderBtn
                        sliderDragFrame.BackgroundColor3 = Color3.fromRGB(248, 139, 255)
                        sliderDragFrame.Position = UDim2.new(0.0078125, 0, 0.0833333358, 0)
                        sliderDragFrame.Size = UDim2.new(0, 1, 0, 10)

                        mainCorner_4.CornerRadius = UDim.new(0, 3)
                        mainCorner_4.Name = "mainCorner"
                        mainCorner_4.Parent = sliderDragFrame

                        sliderlist.Name = "sliderlist"
                        sliderlist.Parent = sliderBtn
                        sliderlist.SortOrder = Enum.SortOrder.LayoutOrder
                        sliderlist.VerticalAlignment = Enum.VerticalAlignment.Center

                        sliderPad.Name = "sliderPad"
                        sliderPad.Parent = sliderBtn
                        sliderPad.PaddingLeft = UDim.new(0, 1)

                        toggleinnerlist.Name = "toggleinnerlist"
                        toggleinnerlist.Parent = sliderOutFrame
                        toggleinnerlist.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        toggleinnerlist.SortOrder = Enum.SortOrder.LayoutOrder
                        toggleinnerlist.VerticalAlignment = Enum.VerticalAlignment.Center

                        sliderInfo_2.Name = "sliderInfo"
                        sliderInfo_2.Parent = sliderFrame
                        sliderInfo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        sliderInfo_2.BackgroundTransparency = 1.000
                        sliderInfo_2.Position = UDim2.new(0.801546395, 0, 0, 0)
                        sliderInfo_2.Size = UDim2.new(0, 69, 0, 44)
                        sliderInfo_2.Font = Enum.Font.GothamSemibold
                        sliderInfo_2.Text = minvalue.."/"..maxvalue
                        sliderInfo_2.TextColor3 = Color3.fromRGB(248, 139, 255)
                        sliderInfo_2.TextSize = 14.000
                        sliderInfo_2.TextXAlignment = Enum.TextXAlignment.Right

                        local mouse = game.Players.LocalPlayer:GetMouse()
                        local uis = game:GetService("UserInputService")
                        local Value;

                        sliderBtn.MouseButton1Down:Connect(function()
                            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 126) * sliderDragFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
                            pcall(function()
                                callback(Value)
                            end)
                            sliderDragFrame.Size = UDim2.new(0, math.clamp(mouse.X - sliderDragFrame.AbsolutePosition.X, 0, 126), 0, 10)
                            moveconnection = mouse.Move:Connect(function()
                                sliderInfo_2.Text = Value.."/"..maxvalue
                                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 126) * sliderDragFrame.AbsoluteSize.X) + tonumber(minvalue))
                                pcall(function()
                                    callback(Value)
                                end)
                                sliderDragFrame.Size = UDim2.new(0, math.clamp(mouse.X - sliderDragFrame.AbsolutePosition.X, 0, 126), 0, 10)
                            end)
                            releaseconnection = uis.InputEnded:Connect(function(Mouse)
                                if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 126) * sliderDragFrame.AbsoluteSize.X) + tonumber(minvalue))
                                    pcall(function()
                                        callback(Value)
                                    end)
                                    sliderDragFrame.Size = UDim2.new(0, math.clamp(mouse.X - sliderDragFrame.AbsolutePosition.X, 0, 126), 0, 10)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end)
                        end)
                        
                        function ElementHandler:addDropdown(textInfo, list, callback)
                            callback = callback or function() end
                            list = list or {}
                            textInfo = textInfo or ""

                            local isDropped = false

                            local dropDownFrame = Instance.new("Frame")
                            local mainCorner = Instance.new("UICorner")
                            local dropdownMainThings = Instance.new("Frame")
                            local dropdownCurrentItem = Instance.new("TextLabel")
                            local dropDownOpen = Instance.new("ImageButton")
                            local mainCorner_2 = Instance.new("UICorner")
                            local droplist = Instance.new("UIListLayout")

                            local DropYSize = 44

                            dropDownFrame.Name = "dropDownFrame"
                            dropDownFrame.Parent = newPageContainer
                            dropDownFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
                            dropDownFrame.ClipsDescendants = true
                            dropDownFrame.Position = UDim2.new(0.0123152705, 0, 0.398601294, 0)
                            dropDownFrame.Size = UDim2.new(0, 388, 0, 44)

                            mainCorner.CornerRadius = UDim.new(0, 5)
                            mainCorner.Name = "mainCorner"
                            mainCorner.Parent = dropDownFrame

                            dropdownMainThings.Name = "dropdownMainThings"
                            dropdownMainThings.Parent = dropDownFrame
                            dropdownMainThings.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            dropdownMainThings.Size = UDim2.new(0, 388, 0, 44)

                            dropdownCurrentItem.Name = "dropdownCurrentItem"
                            dropdownCurrentItem.Parent = dropdownMainThings
                            dropdownCurrentItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownCurrentItem.BackgroundTransparency = 1.000
                            dropdownCurrentItem.Position = UDim2.new(0.0283505153, 0, 0, 0)
                            dropdownCurrentItem.Size = UDim2.new(0, 282, 0, 42)
                            dropdownCurrentItem.Font = Enum.Font.GothamSemibold
                            dropdownCurrentItem.Text = textInfo
                            dropdownCurrentItem.TextColor3 = Color3.fromRGB(248, 139, 255)
                            dropdownCurrentItem.TextSize = 14.000
                            dropdownCurrentItem.TextXAlignment = Enum.TextXAlignment.Left

                            dropDownOpen.Name = "dropDownOpen"
                            dropDownOpen.Parent = dropdownMainThings
                            dropDownOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            dropDownOpen.BackgroundTransparency = 1.000
                            dropDownOpen.Position = UDim2.new(0.894082606, 0, 0.207619041, 0)
                            dropDownOpen.Size = UDim2.new(0, 33, 0, 29)
                            dropDownOpen.Image = "rbxassetid://5165666242"
                            dropDownOpen.ImageColor3 = Color3.fromRGB(248, 139, 255)
                            dropDownOpen.MouseButton1Click:Connect(function()
                                if isDropped then
                                    isDropped = false
                                    dropDownFrame:TweenSize(UDim2.new(0, 388, 0, 44), "In", "Quint", 0.10)
                                    game.TweenService:Create(dropDownOpen, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                        Rotation = 0
                                    }):Play()
                                    wait(0.10)
                                    UpdateSize()
                                else
                                    isDropped = true
                                    dropDownFrame:TweenSize(UDim2.new(0, 388, 0, DropYSize), "In", "Quint", 0.10)
                                    game.TweenService:Create(dropDownOpen, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                        Rotation = 180
                                    }):Play()
                                    wait(0.10)
                                    UpdateSize()
                                end
                            end)

                            mainCorner_2.CornerRadius = UDim.new(0, 5)
                            mainCorner_2.Name = "mainCorner"
                            mainCorner_2.Parent = dropdownMainThings

                            droplist.Name = "droplist"
                            droplist.Parent = dropDownFrame
                            droplist.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            droplist.SortOrder = Enum.SortOrder.LayoutOrder
                            droplist.Padding = UDim.new(0, 5)

                            for i,v in next, list do
                                local optionBtn = Instance.new("TextButton")
                                local mainCorner_3 = Instance.new("UICorner")

                                mainCorner_3.CornerRadius = UDim.new(0, 5)
                                mainCorner_3.Name = "mainCorner"
                                mainCorner_3.Parent = optionBtn

                                optionBtn.Name = "optionBtn"
                                optionBtn.Parent = dropDownFrame
                                optionBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                                optionBtn.Position = UDim2.new(0.0115979379, 0, 0.388429761, 0)
                                optionBtn.Size = UDim2.new(0, 379, 0, 41)
                                optionBtn.Font = Enum.Font.GothamSemibold
                                optionBtn.Text = "   "..v
                                optionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                                optionBtn.TextSize = 14.000
                                optionBtn.TextXAlignment = Enum.TextXAlignment.Left
                                DropYSize = DropYSize + 48
                                optionBtn.MouseButton1Click:Connect(function()
                                    callback(v)
                                    dropdownCurrentItem.Text = v
                                    dropDownFrame:TweenSize(UDim2.new(0, 388, 0, 44), "In", "Quint", 0.10)
                                    dropDownFrame:TweenSize(UDim2.new(0, 388, 0, 44), "In", "Quint", 0.10)
                                    game.TweenService:Create(dropDownOpen, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                        Rotation = 0
                                    }):Play()
                                    wait(0.10)
                                    UpdateSize()
                                    isDropped = false
                                end)


                            function ElementHandler:addTextbox(infoooi1, placeholder1, callback)
                                infoooi1 = infoooi1 or "f"
                                placeholder1 = placeholder1 or "f"
                                callback = callback or function() end
    
                                local textBoxFrame = Instance.new("Frame")
                                local mainCorner = Instance.new("UICorner")
                                local textboxInfo = Instance.new("TextLabel")
                                local TextBox = Instance.new("TextBox")
                                local mainCorner_2 = Instance.new("UICorner")
    
                                textBoxFrame.Name = "textBoxFrame"
                                textBoxFrame.Parent = newPageContainer
                                textBoxFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                                textBoxFrame.Position = UDim2.new(0.0123152705, 0, 0.192307591, 0)
                                textBoxFrame.Size = UDim2.new(0, 388, 0, 44)
    
                                mainCorner.CornerRadius = UDim.new(0, 5)
                                mainCorner.Name = "mainCorner"
                                mainCorner.Parent = textBoxFrame
    
                                textboxInfo.Name = "textboxInfo"
                                textboxInfo.Parent = textBoxFrame
                                textboxInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                textboxInfo.BackgroundTransparency = 1.000
                                textboxInfo.Position = UDim2.new(0.389175266, 0, 0, 0)
                                textboxInfo.Size = UDim2.new(0, 237, 0, 44)
                                textboxInfo.Font = Enum.Font.GothamSemibold
                                textboxInfo.Text = infoooi1
                                textboxInfo.TextColor3 = Color3.fromRGB(206, 206, 206)
                                textboxInfo.TextSize = 14.000
                                textboxInfo.TextXAlignment = Enum.TextXAlignment.Left
    
                                TextBox.Parent = textBoxFrame
                                TextBox.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                                TextBox.Position = UDim2.new(0.023, 0, 0.200000003, 0)
                                TextBox.Size = UDim2.new(0, 126, 0, 26)
                                TextBox.Font = Enum.Font.GothamSemibold
                                TextBox.PlaceholderColor3 = Color3.fromRGB(141, 141, 141)
                                TextBox.PlaceholderText = placeholder1
                                TextBox.TextColor3 = Color3.fromRGB(248, 139, 255)
                                TextBox.TextSize = 12.000
                                TextBox.Text = ""
    
                                mainCorner_2.CornerRadius = UDim.new(0, 5)
                                mainCorner_2.Name = "mainCorner"
                                mainCorner_2.Parent = TextBox
    
                                TextBox.FocusLost:Connect(function(EnterPressed)
                                    if not EnterPressed then return end
                                    callback(TextBox.Text)
                                    TextBox.Text = ""
                                end)
                            end
                            end
                        end
                    end
                end
            end
        end
        return ElementHandler
    end
    return tabHandler
end

return Allinity
