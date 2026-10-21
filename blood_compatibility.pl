
% ==========================================
% BLOOD GROUP COMPATIBILITY SYSTEM
% ==========================================

% Blood group compatibility facts
% Format: compatible(Donor, Recipient).

% O Negative donor
compatible(o_neg, o_neg).
compatible(o_neg, o_pos).
compatible(o_neg, a_neg).
compatible(o_neg, a_pos).
compatible(o_neg, b_neg).
compatible(o_neg, b_pos).
compatible(o_neg, ab_neg).
compatible(o_neg, ab_pos).

% O Positive donor
compatible(o_pos, o_pos).
compatible(o_pos, a_pos).
compatible(o_pos, b_pos).
compatible(o_pos, ab_pos).

% A Negative donor
compatible(a_neg, a_neg).
compatible(a_neg, a_pos).
compatible(a_neg, ab_neg).
compatible(a_neg, ab_pos).

% A Positive donor
compatible(a_pos, a_pos).
compatible(a_pos, ab_pos).

% B Negative donor
compatible(b_neg, b_neg).
compatible(b_neg, b_pos).
compatible(b_neg, ab_neg).
compatible(b_neg, ab_pos).

% B Positive donor
compatible(b_pos, b_pos).
compatible(b_pos, ab_pos).

% AB Negative donor
compatible(ab_neg, ab_neg).
compatible(ab_neg, ab_pos).

% AB Positive donor
compatible(ab_pos, ab_pos).


% Check blood donation compatibility
check_compatibility(Donor, Recipient) :-
    ( compatible(Donor, Recipient) ->
        write('Blood Donation Compatible!')
    ;
        write('Blood Donation Not Compatible!')
    ).


% Display all blood groups
show_blood_groups :-
    write('Available Blood Groups:'), nl,
    write('o_neg, o_pos, a_neg, a_pos,'), nl,
    write('b_neg, b_pos, ab_neg, ab_pos.'), nl.


% Main program
start :-
    nl,
    write('===================================='), nl,
    write(' BLOOD GROUP COMPATIBILITY SYSTEM'), nl,
    write('===================================='), nl,
    show_blood_groups,
    nl,
    write('Enter Donor Blood Group (e.g. a_pos): '),
    read(Donor),
    write('Enter Recipient Blood Group (e.g. ab_pos): '),
    read(Recipient),
    nl,
    check_compatibility(Donor, Recipient),
    nl,
    write('===================================='), nl.
