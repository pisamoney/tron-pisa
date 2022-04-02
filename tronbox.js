module.exports = {
    networks: {
        nile: {
            privateKey: '',
            userFeePercentage: 100,
            feeLimit: 1e9,
            fullHost: 'https://api.nileex.io',
            network_id: '*'
        },
        shasta: {
            privateKey: '',
            userFeePercentage: 100,
            feeLimit: 1e9,
            fullHost: "https://api.shasta.trongrid.io",
            network_id: '*'
        },
        main: {
            privateKey: '',
            userFeePercentage: 100,
            feeLimit: 1e9,
            fullHost: "https://api.trongrid.io",
            network_id: '*'
        },
        compilers: {
            solc: {
                version: '0.5.4'
            }
        }

    },
    // solc compiler optimize
    solc: {
        optimizer: {
            enabled: true,
            runs: 200
        },
        evmVersion: 'istanbul'
    }
};