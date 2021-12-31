(*
    Copyright (c) 2021 David C.J. Matthews

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License version 2.1 as published by the Free Software Foundation.
    
    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.
    
    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*)

signature ARM64ICODECONFLICTS =
sig
    type reg and preg and controlFlow and extendedBasicBlock    
    type intSet
    
    type conflictState =
    {
        conflicts: intSet, realConflicts: reg list
    }

    val getConflictStates: extendedBasicBlock vector * int -> conflictState vector

    structure Sharing:
    sig
        type reg = reg
        and preg = preg
        and intSet = intSet
        and extendedBasicBlock = extendedBasicBlock
    end;
end;
