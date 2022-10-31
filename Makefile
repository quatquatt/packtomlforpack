default:
	@echo "No Default make command configured"
	@echo "Please use either"
	@echo "   - make curseforge"
	@echo "   - make multimc"
	@echo "   - make technic"
	@echo "   - make all"
	@echo ""
	@echo "Curseforge will make a curseforge compatible zip"
	@echo "Multimc will make a multimc zip file which contains"
	@echo "   the packwiz updater"
	@echo ""
	@echo "Technic will make a technic pack zip"
	@echo ""
	@echo "All will make all packs it can"
	@echo ""
	
multimc:
	@echo "Making MultiMC pack"
	7z d ../modpack-multimc.zip ./* -r
	7z d ../modpack-multimc.zip ./.minecraft -r
	7z a ../modpack-multimc.zip ./* -r
	7z a ../modpack-multimc.zip ./.minecraft -r
	7z d ../modpack-multimc.zip ./.minecraft/mods ./.minecraft/pack.toml ./.minecraft/index.toml -r

update-packwiz:
	go install github.com/packwiz/packwiz@latest
	clear
	@echo "Packwiz has been Updated"
