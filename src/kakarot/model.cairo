// SPDX-License-Identifier: MIT

%lang starknet

// StarkWare dependencies
from starkware.cairo.common.bool import TRUE, FALSE
from starkware.cairo.common.uint256 import Uint256

// Internal dependencies
from utils.utils import Helpers

namespace model {
    struct Stack {
        elements: Uint256*,
        raw_len: felt,
    }

    struct ExecutionContext {
        code: felt*,
        code_len: felt,
        calldata: felt*,
        program_counter: felt,
        stopped: felt,
        return_data: felt*,
        stack: Stack*,
    }

    struct ExecutionContextTest {
        code: felt*,
        code_len: felt,
        calldata: felt*,
        program_counter: felt,
        stopped: felt,
        return_data: felt*,
        stack: Stack*,
    }
}
