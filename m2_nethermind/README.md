## Milestone #2: Lighthouse and Nethermind

**WARNING: this testnet does not work!** We are currently blocked on: https://github.com/NethermindEth/nethermind/pull/3453#issuecomment-932693651


References:
	- Nethermind PR: https://github.com/NethermindEth/nethermind/pull/3453

Follow these steps:

notes to nethermind: add the `git checkout`

## How To Run

This testnet requires 3 terminal processes, one for Nethermind one for a beacon node
and one for a validator client. See the per-terminal commands below.

### Terminal 1: Nethermind

*Arch Linux users will need `pacman -S dotnet-sdk aspnet-runtime`.*

```bash
git clone https://github.com/NethermindEth/nethermind --recursive
git checkout themerge
cd nethermind/src/Nethermind
dotnet build Nethermind.sln -c Release
cd Nethermind.Runner
dotnet run -c Release --no-build -- --config themerge_devnet
```

### Terminal 2: Lighthouse Beacon Node

```bash
cd m2_lighthouse
./start_beacon_node.sh 8550
```

*Note: it's important to start the beacon node before the validator client
since that script also generates the testnet configuration.*

### Terminal 3: Lighthouse Validator Client

```bash
cd m2_lighthouse
./start_validator_client.sh
```