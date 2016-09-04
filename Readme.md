# demoFastlaneAndBitrise

## Add to the default workflow:

1. Activate SSH key (RSA private key)
2. Git Clone Repository
3. Do anything with Script step
4. Certificate and profile installer
5. Fastlane step: *Run 'ios beta' in 'Working directory:' $FASTLANE_WORK_DIR*
6. Deploy to Bitrise.io: *Add $FASTLANE_WORK_DIR with 'Compress the artifacts into one file?' as true*