package teamfp.dziennik.model.enums;

import lombok.AllArgsConstructor;

import java.util.HashMap;
import java.util.Map;

@AllArgsConstructor
public enum GradeValue {
    ndst(1, "Niedostateczny"),
    dop(2, "Dopuszczający"),
    dst(3, "Dostateczny"),
    dbr(4, "Dobry"),
    bdb(5, "Bardzo dobry"),
    cel(6, "Celujący");

    private static final Map<Integer, GradeValue> BY_VALUE = new HashMap<>();
    private static final Map<String, GradeValue> BY_DESCRIPTION = new HashMap<>();

    // robimy cache dla wartości enumów aby uprościć i przyspieszyć gettery
    static {
        for (GradeValue gradeValue : values()) {
            BY_VALUE.put(gradeValue.value, gradeValue);
            BY_DESCRIPTION.put(gradeValue.label, gradeValue);
        }
    }

    private final int value;
    private final String label;

    public static GradeValue valueFromDescription(String label) {
        return BY_DESCRIPTION.get(label);
    }

    public static GradeValue labelFromValue(int number) {
        return BY_VALUE.get(number);
    }
}
