.class public Lcom/google/android/gms/internal/zzqm;
.super Lcom/google/android/gms/internal/zzqp;


# instance fields
.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqm$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzrp;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqp;-><init>(Lcom/google/android/gms/internal/zzrp;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->d:Lcom/google/android/gms/internal/zzrp;

    const-string/jumbo v1, "AutoManageHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzrp;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzrn;)Lcom/google/android/gms/internal/zzqm;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/zzqm;->b(Lcom/google/android/gms/internal/zzrn;)Lcom/google/android/gms/internal/zzrp;

    move-result-object v1

    const-string/jumbo v0, "AutoManageHelper"

    const-class v2, Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzrp;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzro;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/zzqm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqm;-><init>(Lcom/google/android/gms/internal/zzrp;)V

    goto :goto_11
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqp;->a()V

    const-string/jumbo v0, "AutoManageHelper"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqm;->a:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "onStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->b:Z

    if-nez v0, :cond_59

    const/4 v0, 0x0

    move v1, v0

    :goto_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqm$zza;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40

    :cond_59
    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqm$zza;->a()V

    :cond_12
    return-void
.end method

.method public a(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 9

    const/16 v4, 0x36

    const-string/jumbo v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9a

    const/4 v0, 0x1

    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(ZLjava/lang/Object;)V

    const-string/jumbo v0, "AutoManageHelper"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqm;->a:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqm;->b:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "starting AutoManage for client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/zzqm$zza;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqm$zza;-><init>(Lcom/google/android/gms/internal/zzqm;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->a:Z

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqm;->b:Z

    if-nez v0, :cond_99

    const-string/jumbo v0, "AutoManageHelper"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->b()V

    :cond_99
    return-void

    :cond_9a
    const/4 v0, 0x0

    goto/16 :goto_11
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    const-string/jumbo v0, "AutoManageHelper"

    const-string/jumbo v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_1a

    const-string/jumbo v0, "AutoManageHelper"

    const-string/jumbo v1, "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm$zza;

    if-eqz v0, :cond_19

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzqm;->a(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqm$zza;->c:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_19
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm$zza;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqm$zza;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqp;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqm$zza;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1e
    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqm;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqm$zza;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1b
    return-void
.end method
