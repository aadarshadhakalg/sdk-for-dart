part of dart_appwrite.models;

/// Executions List
class ExecutionList {
    /// Total number of executions documents that matched your query.
    final int total;
    /// List of executions.
    final List<Execution> executions;

    ExecutionList({
        required this.total,
        required this.executions,
    });

    factory ExecutionList.fromMap(Map<String, dynamic> map) {
        return ExecutionList(
            total: map['total'],
            executions: List<Execution>.from(map['executions'].map((p) => Execution.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "executions": executions.map((p) => p.toMap()),
        };
    }
}
