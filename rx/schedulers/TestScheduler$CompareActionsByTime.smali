.class Lrx/schedulers/TestScheduler$CompareActionsByTime;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx/schedulers/TestScheduler$TimedAction;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TestScheduler$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/schedulers/TestScheduler$1;

    .prologue
    .line 56
    invoke-direct {p0}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;->compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I
    .registers 11
    .param p1, "action1"    # Lrx/schedulers/TestScheduler$TimedAction;
    .param p2, "action2"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 59
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2c

    .line 60
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1c

    .line 62
    :cond_1b
    :goto_1b
    return v0

    .line 60
    :cond_1c
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2a

    move v0, v1

    goto :goto_1b

    :cond_2a
    move v0, v2

    goto :goto_1b

    .line 62
    :cond_2c
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1b

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_46

    move v0, v1

    goto :goto_1b

    :cond_46
    move v0, v2

    goto :goto_1b
.end method